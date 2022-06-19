package p193e.p1485h.p1486a.p1493c;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
/* renamed from: e.h.a.c.u */
/* loaded from: classes-dex2jar.jar:e/h/a/c/u.class */
public interface AbstractC22839u {

    /* renamed from: a */
    public static final String[] f63385a = {"Notification Clicked", "Notification Viewed", "Geocluster Entered", "Geocluster Exited"};

    /* renamed from: b */
    public static final HashSet<String> f63386b = new HashSet<>(Arrays.asList("Identity", "Email"));

    /* renamed from: c */
    public static final HashSet<String> f63387c = new HashSet<>(Arrays.asList("Identity", "Email", "Phone"));

    /* renamed from: d */
    public static final String[] f63388d = new String[0];

    static {
        new SimpleDateFormat("MM/dd/yyyy", Locale.US);
    }
}
