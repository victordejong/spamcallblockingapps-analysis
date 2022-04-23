package p131c.p396i.p397a.p405h;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p417j.C6614a;
import p131c.p396i.p397a.p417j.C6618e;
/* renamed from: c.i.a.h.d */
/* loaded from: classes2-dex2jar.jar:c/i/a/h/d.class */
public class C6551d extends AbstractC6548a {

    /* renamed from: a */
    public File f20325a;

    /* renamed from: b */
    public File f20326b;

    /* renamed from: d */
    public boolean f20328d;

    /* renamed from: c */
    public long f20327c = 0;

    /* renamed from: e */
    public long f20329e = 1024;

    /* renamed from: f */
    public long f20330f = 300000;

    public C6551d() {
        m20520c();
    }

    /* renamed from: a */
    public long m20530a() {
        long b = C6618e.m20334a().m20328b("key_upload_time");
        this.f20327c = b;
        return b;
    }

    /* renamed from: a */
    public final String m20525a(File[] fileArr) {
        File file = fileArr[0];
        for (File file2 : fileArr) {
            file = file;
            if (file2.lastModified() < file.lastModified()) {
                file = file2;
            }
        }
        String name = file.getName();
        C6614a.m20363b("SDCard 可用日志文件名都已存在需要删除最早记录", name);
        file.delete();
        return name;
    }

    /* renamed from: a */
    public void m20529a(long j) {
        this.f20327c = j;
        C6618e.m20334a().m20331a("key_upload_time", j);
    }

    /* renamed from: a */
    public void m20527a(boolean z) {
        this.f20328d = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20526a(p131c.p396i.p397a.p405h.C6550c... r6) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p396i.p397a.p405h.C6551d.m20526a(c.i.a.h.c[]):void");
    }

    /* renamed from: a */
    public boolean m20528a(String str) {
        File file = new File(str);
        C6614a.m20363b("从SDCard日志中删除", file.getAbsolutePath());
        synchronized (this) {
            if (!file.exists()) {
                return false;
            }
            return file.delete();
        }
    }

    /* renamed from: b */
    public String m20524b() {
        File file = new File(this.f20325a + File.separator + "upload");
        if (!file.exists() || !file.isDirectory()) {
            return null;
        }
        File[] listFiles = file.listFiles();
        if (listFiles.length <= 0) {
            return null;
        }
        C6614a.m20363b("获取需要上传的文件名", listFiles[0].getName());
        return listFiles[0].getAbsolutePath();
    }

    /* renamed from: b */
    public String m20522b(String str) {
        File file = new File(str);
        if (!file.exists() || file.isDirectory()) {
            return null;
        }
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            StringBuilder sb = new StringBuilder();
            byte[] bArr = new byte[1024];
            for (int read = bufferedInputStream.read(bArr); read != -1; read = bufferedInputStream.read(bArr)) {
                sb.append(new String(bArr, 0, read));
            }
            return sb.toString();
        } catch (IOException e) {
            e.printStackTrace();
            C6614a.m20363b("从SDCard日志中读取数据:");
            return null;
        }
    }

    /* renamed from: b */
    public final String m20521b(File[] fileArr) {
        C6614a.m20363b("开始 SDCard日志 获取可用的日志文件名");
        String str = "upload0.log";
        String str2 = str;
        if (fileArr.length > 0) {
            ArrayList arrayList = new ArrayList(fileArr.length);
            for (File file : fileArr) {
                arrayList.add(file.getName());
            }
            for (int i = 1; i <= 10; i++) {
                if (!arrayList.contains(str)) {
                    C6614a.m20363b("SDCard日志 获取可用的日志文件名", str);
                    return str;
                }
                C6614a.m20363b("SDCard 日志文件名已存在:", str);
                str = "upload" + i + ".log";
            }
            str2 = m20525a(fileArr);
        }
        C6614a.m20363b("SDCard日志 获取可用的日志文件名", str2);
        return str2;
    }

    /* renamed from: b */
    public void m20523b(long j) {
        if (j >= 1024) {
            this.f20329e = j;
        }
    }

    /* renamed from: c */
    public final void m20520c() {
        File file = new File(C6489a.m20718b().getFilesDir(), "adLog");
        this.f20325a = file;
        if ((!file.exists() || (this.f20325a.isFile() && this.f20325a.delete())) && !this.f20325a.mkdirs()) {
            this.f20325a.getAbsolutePath();
        }
        File file2 = new File(this.f20325a, "event.log");
        this.f20326b = file2;
        if (!file2.exists()) {
            try {
                this.f20326b.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        C6614a.m20363b("mLogFile ", this.f20326b.getAbsolutePath());
    }

    /* renamed from: c */
    public void m20519c(long j) {
        if (j >= 60000) {
            this.f20330f = j;
        }
    }

    /* renamed from: d */
    public boolean m20518d() {
        return this.f20328d;
    }

    /* renamed from: e */
    public boolean m20517e() {
        boolean z = false;
        C6614a.m20363b("logFile size ", Long.valueOf(this.f20326b.length()));
        boolean z2 = this.f20326b.length() > this.f20329e;
        if (z2) {
            C6614a.m20363b("需要上传，文件大小满足", this.f20326b.length() + " > " + this.f20329e);
        }
        this.f20327c = m20530a();
        boolean z3 = System.currentTimeMillis() - this.f20327c > this.f20330f;
        if (z3) {
            C6614a.m20363b("需要上传，时间满足", Long.valueOf(System.currentTimeMillis() - this.f20327c), Long.valueOf(this.f20330f));
        }
        if (z2 || z3) {
            z = true;
        }
        return z;
    }

    /* renamed from: f */
    public String m20516f() {
        String b;
        C6614a.m20363b("SDCard日志转移到提交目录下");
        File file = new File(this.f20325a, "event.log");
        if (!file.exists()) {
            C6614a.m20363b("SDCard日志不存在");
            return null;
        }
        File file2 = new File(this.f20325a + File.separator + "upload");
        if ((!file2.exists() || (file2.isFile() && file2.delete())) && !file2.mkdirs()) {
            return null;
        }
        synchronized (this) {
            b = m20521b(file2.listFiles());
            File file3 = new File(file2, b);
            C6614a.m20363b("SDCard日志 转移到 ", file3.getAbsolutePath());
            file.renameTo(file3);
            m20520c();
        }
        return b;
    }

    /* renamed from: g */
    public boolean m20515g() {
        File file = this.f20326b;
        boolean z = file != null && file.exists();
        C6614a.m20363b("文件存储是否可用", Boolean.valueOf(z));
        return z;
    }
}
