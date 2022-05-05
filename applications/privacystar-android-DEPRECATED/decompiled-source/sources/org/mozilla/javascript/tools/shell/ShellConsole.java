package org.mozilla.javascript.tools.shell;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.nio.charset.Charset;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.Scriptable;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/ShellConsole.class */
public abstract class ShellConsole {
    private static final Class[] NO_ARG = new Class[0];
    private static final Class[] BOOLEAN_ARG = {Boolean.TYPE};
    private static final Class[] STRING_ARG = {String.class};
    private static final Class[] CHARSEQ_ARG = {CharSequence.class};

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream.class */
    private static class ConsoleInputStream extends InputStream {
        private static final byte[] EMPTY = new byte[0];
        private final ShellConsole console;

        /* renamed from: cs */
        private final Charset f853cs;
        private byte[] buffer = EMPTY;
        private int cursor = -1;
        private boolean atEOF = false;

        public ConsoleInputStream(ShellConsole shellConsole, Charset charset) {
            this.console = shellConsole;
            this.f853cs = charset;
        }

        private boolean ensureInput() throws IOException {
            if (this.atEOF) {
                return false;
            }
            if (this.cursor >= 0 && this.cursor <= this.buffer.length) {
                return true;
            }
            if (readNextLine() == -1) {
                this.atEOF = true;
                return false;
            }
            this.cursor = 0;
            return true;
        }

        private int readNextLine() throws IOException {
            String readLine = this.console.readLine(null);
            if (readLine != null) {
                this.buffer = readLine.getBytes(this.f853cs);
                return this.buffer.length;
            }
            this.buffer = EMPTY;
            return -1;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            synchronized (this) {
                if (!ensureInput()) {
                    return -1;
                }
                if (this.cursor == this.buffer.length) {
                    this.cursor++;
                    return 10;
                }
                byte[] bArr = this.buffer;
                int i = this.cursor;
                this.cursor = i + 1;
                return bArr[i];
            }
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int i3;
            synchronized (this) {
                if (bArr == null) {
                    throw new NullPointerException();
                } else if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                    throw new IndexOutOfBoundsException();
                } else {
                    if (i2 == 0) {
                        return 0;
                    }
                    if (!ensureInput()) {
                        return -1;
                    }
                    int min = Math.min(i2, this.buffer.length - this.cursor);
                    for (int i4 = 0; i4 < min; i4++) {
                        bArr[i + i4] = this.buffer[this.cursor + i4];
                    }
                    if (min < i2) {
                        i3 = min + 1;
                        bArr[i + min] = (byte) 10;
                    } else {
                        i3 = min;
                    }
                    this.cursor += i3;
                    return i3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/ShellConsole$JLineShellConsoleV1.class */
    public static class JLineShellConsoleV1 extends ShellConsole {

        /* renamed from: in */
        private final InputStream f854in;
        private final Object reader;

        JLineShellConsoleV1(Object obj, Charset charset) {
            this.reader = obj;
            this.f854in = new ConsoleInputStream(this, charset);
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public void flush() throws IOException {
            ShellConsole.tryInvoke(this.reader, "flushConsole", ShellConsole.NO_ARG, new Object[0]);
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public InputStream getIn() {
            return this.f854in;
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public void print(String str) throws IOException {
            ShellConsole.tryInvoke(this.reader, "printString", ShellConsole.STRING_ARG, str);
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public void println() throws IOException {
            ShellConsole.tryInvoke(this.reader, "printNewline", ShellConsole.NO_ARG, new Object[0]);
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public void println(String str) throws IOException {
            ShellConsole.tryInvoke(this.reader, "printString", ShellConsole.STRING_ARG, str);
            ShellConsole.tryInvoke(this.reader, "printNewline", ShellConsole.NO_ARG, new Object[0]);
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public String readLine() throws IOException {
            return (String) ShellConsole.tryInvoke(this.reader, "readLine", ShellConsole.NO_ARG, new Object[0]);
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public String readLine(String str) throws IOException {
            return (String) ShellConsole.tryInvoke(this.reader, "readLine", ShellConsole.STRING_ARG, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/ShellConsole$JLineShellConsoleV2.class */
    public static class JLineShellConsoleV2 extends ShellConsole {

        /* renamed from: in */
        private final InputStream f855in;
        private final Object reader;

        JLineShellConsoleV2(Object obj, Charset charset) {
            this.reader = obj;
            this.f855in = new ConsoleInputStream(this, charset);
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public void flush() throws IOException {
            ShellConsole.tryInvoke(this.reader, "flush", ShellConsole.NO_ARG, new Object[0]);
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public InputStream getIn() {
            return this.f855in;
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public void print(String str) throws IOException {
            ShellConsole.tryInvoke(this.reader, "print", ShellConsole.CHARSEQ_ARG, str);
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public void println() throws IOException {
            ShellConsole.tryInvoke(this.reader, "println", ShellConsole.NO_ARG, new Object[0]);
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public void println(String str) throws IOException {
            ShellConsole.tryInvoke(this.reader, "println", ShellConsole.CHARSEQ_ARG, str);
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public String readLine() throws IOException {
            return (String) ShellConsole.tryInvoke(this.reader, "readLine", ShellConsole.NO_ARG, new Object[0]);
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public String readLine(String str) throws IOException {
            return (String) ShellConsole.tryInvoke(this.reader, "readLine", ShellConsole.STRING_ARG, str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole.class */
    private static class SimpleShellConsole extends ShellConsole {

        /* renamed from: in */
        private final InputStream f856in;
        private final PrintWriter out;
        private final BufferedReader reader;

        SimpleShellConsole(InputStream inputStream, PrintStream printStream, Charset charset) {
            this.f856in = inputStream;
            this.out = new PrintWriter(printStream);
            this.reader = new BufferedReader(new InputStreamReader(inputStream, charset));
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public void flush() throws IOException {
            this.out.flush();
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public InputStream getIn() {
            return this.f856in;
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public void print(String str) throws IOException {
            this.out.print(str);
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public void println() throws IOException {
            this.out.println();
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public void println(String str) throws IOException {
            this.out.println(str);
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public String readLine() throws IOException {
            return this.reader.readLine();
        }

        @Override // org.mozilla.javascript.tools.shell.ShellConsole
        public String readLine(String str) throws IOException {
            if (str != null) {
                this.out.write(str);
                this.out.flush();
            }
            return this.reader.readLine();
        }
    }

    protected ShellConsole() {
    }

    public static ShellConsole getConsole(InputStream inputStream, PrintStream printStream, Charset charset) {
        return new SimpleShellConsole(inputStream, printStream, charset);
    }

    public static ShellConsole getConsole(Scriptable scriptable, Charset charset) {
        ClassLoader classLoader = ShellConsole.class.getClassLoader();
        ClassLoader classLoader2 = classLoader;
        if (classLoader == null) {
            classLoader2 = ClassLoader.getSystemClassLoader();
        }
        if (classLoader2 == null) {
            return null;
        }
        try {
            Class<?> classOrNull = Kit.classOrNull(classLoader2, "jline.console.ConsoleReader");
            if (classOrNull != null) {
                return getJLineShellConsoleV2(classLoader2, classOrNull, scriptable, charset);
            }
            Class<?> classOrNull2 = Kit.classOrNull(classLoader2, "jline.ConsoleReader");
            if (classOrNull2 != null) {
                return getJLineShellConsoleV1(classLoader2, classOrNull2, scriptable, charset);
            }
            return null;
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            return null;
        }
    }

    private static JLineShellConsoleV1 getJLineShellConsoleV1(ClassLoader classLoader, Class<?> cls, Scriptable scriptable, Charset charset) throws NoSuchMethodException, InstantiationException, IllegalAccessException, InvocationTargetException {
        Object newInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
        tryInvoke(newInstance, "setBellEnabled", BOOLEAN_ARG, Boolean.FALSE);
        Class<?> classOrNull = Kit.classOrNull(classLoader, "jline.Completor");
        tryInvoke(newInstance, "addCompletor", new Class[]{classOrNull}, Proxy.newProxyInstance(classLoader, new Class[]{classOrNull}, new FlexibleCompletor(classOrNull, scriptable)));
        return new JLineShellConsoleV1(newInstance, charset);
    }

    private static JLineShellConsoleV2 getJLineShellConsoleV2(ClassLoader classLoader, Class<?> cls, Scriptable scriptable, Charset charset) throws NoSuchMethodException, InstantiationException, IllegalAccessException, InvocationTargetException {
        Object newInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
        tryInvoke(newInstance, "setBellEnabled", BOOLEAN_ARG, Boolean.FALSE);
        Class<?> classOrNull = Kit.classOrNull(classLoader, "jline.console.completer.Completer");
        tryInvoke(newInstance, "addCompleter", new Class[]{classOrNull}, Proxy.newProxyInstance(classLoader, new Class[]{classOrNull}, new FlexibleCompletor(classOrNull, scriptable)));
        return new JLineShellConsoleV2(newInstance, charset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object tryInvoke(Object obj, String str, Class[] clsArr, Object... objArr) {
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod(str, clsArr);
            if (declaredMethod != null) {
                return declaredMethod.invoke(obj, objArr);
            }
            return null;
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e) {
            return null;
        }
    }

    public abstract void flush() throws IOException;

    public abstract InputStream getIn();

    public abstract void print(String str) throws IOException;

    public abstract void println() throws IOException;

    public abstract void println(String str) throws IOException;

    public abstract String readLine() throws IOException;

    public abstract String readLine(String str) throws IOException;
}
