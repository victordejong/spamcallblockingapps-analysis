package p1727n3.p1807k.p1808a;

import android.app.Notification;
import android.app.Person;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p1727n3.p1807k.p1808a.C26464y;
import p1727n3.p1807k.p1818g.C26536a;
/* renamed from: n3.k.a.t */
/* loaded from: classes-dex2jar.jar:n3/k/a/t.class */
public class C26453t extends AbstractC26455u {

    /* renamed from: e */
    public final List<C26454a> f74168e = new ArrayList();

    /* renamed from: f */
    public final List<C26454a> f74169f = new ArrayList();

    /* renamed from: g */
    public C26464y f74170g;

    /* renamed from: h */
    public CharSequence f74171h;

    /* renamed from: i */
    public Boolean f74172i;

    /* renamed from: n3.k.a.t$a */
    /* loaded from: classes-dex2jar.jar:n3/k/a/t$a.class */
    public static final class C26454a {

        /* renamed from: a */
        public final CharSequence f74173a;

        /* renamed from: b */
        public final long f74174b;

        /* renamed from: c */
        public final C26464y f74175c;

        /* renamed from: d */
        public Bundle f74176d = new Bundle();

        /* renamed from: e */
        public String f74177e;

        /* renamed from: f */
        public Uri f74178f;

        public C26454a(CharSequence charSequence, long j, C26464y c26464y) {
            this.f74173a = charSequence;
            this.f74174b = j;
            this.f74175c = c26464y;
        }

        /* renamed from: a */
        public static Bundle[] m1836a(List<C26454a> list) {
            Bundle[] bundleArr = new Bundle[list.size()];
            int size = list.size();
            for (int i = 0; i < size; i++) {
                C26454a c26454a = list.get(i);
                Objects.requireNonNull(c26454a);
                Bundle bundle = new Bundle();
                CharSequence charSequence = c26454a.f74173a;
                if (charSequence != null) {
                    bundle.putCharSequence("text", charSequence);
                }
                bundle.putLong("time", c26454a.f74174b);
                C26464y c26464y = c26454a.f74175c;
                if (c26464y != null) {
                    bundle.putCharSequence(AnalyticsConstants.SENDER, c26464y.f74216a);
                    if (Build.VERSION.SDK_INT >= 28) {
                        bundle.putParcelable("sender_person", c26454a.f74175c.m1803c());
                    } else {
                        bundle.putBundle("person", c26454a.f74175c.m1802d());
                    }
                }
                String str = c26454a.f74177e;
                if (str != null) {
                    bundle.putString("type", str);
                }
                Uri uri = c26454a.f74178f;
                if (uri != null) {
                    bundle.putParcelable("uri", uri);
                }
                Bundle bundle2 = c26454a.f74176d;
                if (bundle2 != null) {
                    bundle.putBundle("extras", bundle2);
                }
                bundleArr[i] = bundle;
            }
            return bundleArr;
        }

        /* renamed from: b */
        public static List<C26454a> m1835b(Parcelable[] parcelableArr) {
            C26464y c26464y;
            ArrayList arrayList = new ArrayList(parcelableArr.length);
            for (int i = 0; i < parcelableArr.length; i++) {
                if (parcelableArr[i] instanceof Bundle) {
                    Bundle bundle = (Bundle) parcelableArr[i];
                    C26454a c26454a = null;
                    try {
                        if (bundle.containsKey("text")) {
                            if (!bundle.containsKey("time")) {
                                c26454a = null;
                            } else {
                                if (bundle.containsKey("person")) {
                                    c26464y = C26464y.m1804b(bundle.getBundle("person"));
                                } else if (bundle.containsKey("sender_person") && Build.VERSION.SDK_INT >= 28) {
                                    c26464y = C26464y.m1805a((Person) bundle.getParcelable("sender_person"));
                                } else if (bundle.containsKey(AnalyticsConstants.SENDER)) {
                                    C26464y.C26465a c26465a = new C26464y.C26465a();
                                    c26465a.f74222a = bundle.getCharSequence(AnalyticsConstants.SENDER);
                                    c26464y = new C26464y(c26465a);
                                } else {
                                    c26464y = null;
                                }
                                C26454a c26454a2 = new C26454a(bundle.getCharSequence("text"), bundle.getLong("time"), c26464y);
                                if (bundle.containsKey("type") && bundle.containsKey("uri")) {
                                    c26454a2.f74177e = bundle.getString("type");
                                    c26454a2.f74178f = (Uri) bundle.getParcelable("uri");
                                }
                                if (bundle.containsKey("extras")) {
                                    c26454a2.f74176d.putAll(bundle.getBundle("extras"));
                                }
                                c26454a = c26454a2;
                            }
                        }
                    } catch (ClassCastException e) {
                        c26454a = null;
                    }
                    if (c26454a != null) {
                        arrayList.add(c26454a);
                    }
                }
            }
            return arrayList;
        }

        /* renamed from: c */
        public Notification.MessagingStyle.Message m1834c() {
            Notification.MessagingStyle.Message message;
            C26464y c26464y = this.f74175c;
            Person person = null;
            if (Build.VERSION.SDK_INT >= 28) {
                CharSequence charSequence = this.f74173a;
                long j = this.f74174b;
                if (c26464y != null) {
                    person = c26464y.m1803c();
                }
                message = new Notification.MessagingStyle.Message(charSequence, j, person);
            } else {
                message = new Notification.MessagingStyle.Message(this.f74173a, this.f74174b, c26464y == null ? null : c26464y.f74216a);
            }
            String str = this.f74177e;
            if (str != null) {
                message.setData(str, this.f74178f);
            }
            return message;
        }
    }

    public C26453t() {
    }

    public C26453t(C26464y c26464y) {
        if (!TextUtils.isEmpty(c26464y.f74216a)) {
            this.f74170g = c26464y;
            return;
        }
        throw new IllegalArgumentException("User's name must not be empty.");
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: a */
    public void mo1833a(Bundle bundle) {
        super.mo1833a(bundle);
        bundle.putCharSequence("android.selfDisplayName", this.f74170g.f74216a);
        bundle.putBundle("android.messagingStyleUser", this.f74170g.m1802d());
        bundle.putCharSequence("android.hiddenConversationTitle", this.f74171h);
        if (this.f74171h != null && this.f74172i.booleanValue()) {
            bundle.putCharSequence("android.conversationTitle", this.f74171h);
        }
        if (!this.f74168e.isEmpty()) {
            bundle.putParcelableArray("android.messages", C26454a.m1836a(this.f74168e));
        }
        if (!this.f74169f.isEmpty()) {
            bundle.putParcelableArray("android.messages.historic", C26454a.m1836a(this.f74169f));
        }
        Boolean bool = this.f74172i;
        if (bool != null) {
            bundle.putBoolean("android.isGroupConversation", bool.booleanValue());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x025b  */
    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo1832b(p1727n3.p1807k.p1808a.AbstractC26441j r5) {
        /*
            Method dump skipped, instructions count: 700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1808a.C26453t.mo1832b(n3.k.a.j):void");
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: c */
    public void mo1831c(Bundle bundle) {
        super.mo1831c(bundle);
        bundle.remove("android.messagingStyleUser");
        bundle.remove("android.selfDisplayName");
        bundle.remove("android.conversationTitle");
        bundle.remove("android.hiddenConversationTitle");
        bundle.remove("android.messages");
        bundle.remove("android.messages.historic");
        bundle.remove("android.isGroupConversation");
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: f */
    public String mo1828f() {
        return "androidx.core.app.NotificationCompat$MessagingStyle";
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: j */
    public void mo1824j(Bundle bundle) {
        super.mo1824j(bundle);
        this.f74168e.clear();
        if (bundle.containsKey("android.messagingStyleUser")) {
            this.f74170g = C26464y.m1804b(bundle.getBundle("android.messagingStyleUser"));
        } else {
            C26464y.C26465a c26465a = new C26464y.C26465a();
            c26465a.f74222a = bundle.getString("android.selfDisplayName");
            this.f74170g = new C26464y(c26465a);
        }
        CharSequence charSequence = bundle.getCharSequence("android.conversationTitle");
        this.f74171h = charSequence;
        if (charSequence == null) {
            this.f74171h = bundle.getCharSequence("android.hiddenConversationTitle");
        }
        Parcelable[] parcelableArray = bundle.getParcelableArray("android.messages");
        if (parcelableArray != null) {
            this.f74168e.addAll(C26454a.m1835b(parcelableArray));
        }
        Parcelable[] parcelableArray2 = bundle.getParcelableArray("android.messages.historic");
        if (parcelableArray2 != null) {
            this.f74169f.addAll(C26454a.m1835b(parcelableArray2));
        }
        if (bundle.containsKey("android.isGroupConversation")) {
            this.f74172i = Boolean.valueOf(bundle.getBoolean("android.isGroupConversation"));
        }
    }

    /* renamed from: k */
    public C26453t m1838k(CharSequence charSequence, long j, C26464y c26464y) {
        this.f74168e.add(new C26454a(charSequence, j, c26464y));
        if (this.f74168e.size() > 25) {
            this.f74168e.remove(0);
        }
        return this;
    }

    /* renamed from: l */
    public final CharSequence m1837l(C26454a c26454a) {
        C26536a m1710c = C26536a.m1710c();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i = 1 != 0 ? -16777216 : -1;
        C26464y c26464y = c26454a.f74175c;
        String str = c26464y == null ? "" : c26464y.f74216a;
        int i2 = i;
        CharSequence charSequence = str;
        if (TextUtils.isEmpty(str)) {
            CharSequence charSequence2 = this.f74170g.f74216a;
            i2 = i;
            charSequence = charSequence2;
            if (1 != 0) {
                int i3 = this.f74179a.f74123D;
                i2 = i;
                charSequence = charSequence2;
                if (i3 != 0) {
                    i2 = i3;
                    charSequence = charSequence2;
                }
            }
        }
        CharSequence m1709d = m1710c.m1709d(charSequence);
        spannableStringBuilder.append(m1709d);
        spannableStringBuilder.setSpan(new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i2), null), spannableStringBuilder.length() - m1709d.length(), spannableStringBuilder.length(), 33);
        CharSequence charSequence3 = c26454a.f74173a;
        if (charSequence3 == null) {
            charSequence3 = "";
        }
        spannableStringBuilder.append((CharSequence) "  ").append(m1710c.m1709d(charSequence3));
        return spannableStringBuilder;
    }
}
