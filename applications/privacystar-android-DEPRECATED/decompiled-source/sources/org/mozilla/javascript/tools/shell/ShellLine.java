package org.mozilla.javascript.tools.shell;

import java.io.InputStream;
import java.nio.charset.Charset;
import org.mozilla.javascript.Scriptable;
@Deprecated
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/ShellLine.class */
public class ShellLine {
    @Deprecated
    public static InputStream getStream(Scriptable scriptable) {
        ShellConsole console = ShellConsole.getConsole(scriptable, Charset.defaultCharset());
        return console != null ? console.getIn() : null;
    }
}
