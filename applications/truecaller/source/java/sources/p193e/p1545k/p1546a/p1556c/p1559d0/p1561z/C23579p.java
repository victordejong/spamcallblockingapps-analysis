package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.File;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Currency;
import java.util.HashSet;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
/* renamed from: e.k.a.c.d0.z.p */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/p.class */
public class C23579p {

    /* renamed from: a */
    public static final HashSet<String> f65409a = new HashSet<>();

    static {
        for (int i = 0; i < 7; i++) {
            f65409a.add(new Class[]{UUID.class, AtomicBoolean.class, AtomicInteger.class, AtomicLong.class, StackTraceElement.class, ByteBuffer.class, Void.class}[i].getName());
        }
        int i2 = AbstractC23576o.f65407d;
        for (int i3 = 0; i3 < 13; i3++) {
            f65409a.add(new Class[]{File.class, URL.class, URI.class, Class.class, AbstractC23698i.class, Currency.class, Pattern.class, Locale.class, Charset.class, TimeZone.class, InetAddress.class, InetSocketAddress.class, StringBuilder.class}[i3].getName());
        }
    }
}
