package p459j.p460a.p474c0.p499h;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.WebvttCueParser;
import com.flurry.sdk.C3478n;
import com.flurry.sdk.C3496r;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import java.util.ArrayList;
import java.util.List;
/* renamed from: j.a.c0.h.e */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/e.class */
public class C12155e {

    /* renamed from: a */
    public static final Uri f27299a = new Uri.Builder().scheme("messaging").authority("avatar").appendPath("b").build();

    static {
        m6970a("", false, 0, true);
        m6970a("", false, 0, false);
    }

    /* renamed from: a */
    public static Uri m6977a(@NonNull Uri uri, @NonNull Uri uri2) {
        C12151d.m7000b(uri);
        C12151d.m7000b(uri2);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("messaging");
        builder.authority("avatar");
        builder.appendPath(C3496r.f6031a);
        builder.appendQueryParameter("m", uri.toString());
        builder.appendQueryParameter("f", uri2.toString());
        return builder.build();
    }

    /* renamed from: a */
    public static Uri m6976a(Uri uri, CharSequence charSequence, String str, String str2) {
        Uri uri2;
        if (TextUtils.isEmpty(charSequence) || !m6973a(charSequence)) {
            if (!TextUtils.isEmpty(str2)) {
                str = str2;
            }
            uri2 = m6971a(str);
        } else {
            uri2 = m6972a(charSequence, str2);
        }
        if (uri == null) {
            return uri2;
        }
        Uri uri3 = uri;
        if (C12216t0.m6756g(uri)) {
            uri3 = m6977a(uri, uri2);
        }
        return uri3;
    }

    /* renamed from: a */
    public static Uri m6975a(@NonNull ParticipantData participantData) {
        C12151d.m7000b(participantData);
        String w = participantData.m27520w();
        return m6976a(w == null ? null : Uri.parse(w), participantData.m27524s(), participantData.m27521v(), participantData.m27522u());
    }

    /* renamed from: a */
    public static Uri m6974a(@NonNull ParticipantData participantData, @Nullable String str, boolean z, boolean z2) {
        C12151d.m7000b(participantData);
        C12151d.m6999b(participantData.m27555C());
        C12151d.m6999b(!TextUtils.isEmpty(str) || !TextUtils.isEmpty(participantData.m27520w()));
        return TextUtils.isEmpty(str) ? m6975a(participantData) : m6970a(str, z, participantData.m27557A(), z2);
    }

    /* renamed from: a */
    public static Uri m6972a(@NonNull CharSequence charSequence, String str) {
        C12151d.m7000b(charSequence);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("messaging");
        builder.authority("avatar");
        builder.appendPath("l");
        String valueOf = String.valueOf(charSequence);
        builder.appendQueryParameter(C3478n.f5989a, valueOf);
        if (TextUtils.isEmpty(str)) {
            str = valueOf;
        }
        builder.appendQueryParameter(WebvttCueParser.TAG_ITALIC, str);
        return builder.build();
    }

    /* renamed from: a */
    public static Uri m6971a(@NonNull String str) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("messaging");
        builder.authority("avatar");
        builder.appendPath("d");
        builder.appendQueryParameter(WebvttCueParser.TAG_ITALIC, str);
        return builder.build();
    }

    /* renamed from: a */
    public static Uri m6970a(String str, boolean z, int i, boolean z2) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("messaging");
        builder.authority("avatar");
        builder.appendPath("s");
        builder.appendQueryParameter(WebvttCueParser.TAG_ITALIC, str);
        builder.appendQueryParameter("c", String.valueOf(i));
        builder.appendQueryParameter("s", String.valueOf(z));
        builder.appendQueryParameter("g", String.valueOf(z2));
        return builder.build();
    }

    /* renamed from: a */
    public static Uri m6969a(@NonNull List<ParticipantData> list) {
        C12151d.m7000b(list);
        C12151d.m6999b(!list.isEmpty());
        if (list.size() == 1) {
            return m6975a(list.get(0));
        }
        int min = Math.min(list.size(), 4);
        ArrayList arrayList = new ArrayList(min);
        for (int i = 0; i < min; i++) {
            arrayList.add(m6975a(list.get(i)));
        }
        return m6967b(arrayList);
    }

    /* renamed from: a */
    public static String m6978a(@NonNull Uri uri) {
        C12151d.m7000b(uri);
        List<String> pathSegments = uri.getPathSegments();
        return pathSegments.isEmpty() ? null : pathSegments.get(0);
    }

    /* renamed from: a */
    public static boolean m6973a(CharSequence charSequence) {
        boolean z = false;
        if (charSequence.charAt(0) != '+') {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public static Uri m6968b(@NonNull Uri uri) {
        C12151d.m7000b(uri);
        String queryParameter = uri.getQueryParameter("f");
        return queryParameter == null ? null : Uri.parse(queryParameter);
    }

    /* renamed from: b */
    public static Uri m6967b(@NonNull List<Uri> list) {
        C12151d.m7000b(list);
        C12151d.m6999b(!list.isEmpty());
        if (list.size() == 1) {
            Uri uri = list.get(0);
            C12151d.m6999b(m6961h(uri));
            return uri;
        }
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("messaging");
        builder.authority("avatar");
        builder.appendPath("g");
        int min = Math.min(list.size(), 4);
        for (int i = 0; i < min; i++) {
            Uri uri2 = list.get(i);
            C12151d.m7000b(uri2);
            C12151d.m6999b(C12216t0.m6756g(uri2) || m6961h(uri2));
            builder.appendQueryParameter("p", uri2.toString());
        }
        return builder.build();
    }

    /* renamed from: c */
    public static String m6966c(@NonNull Uri uri) {
        C12151d.m7000b(uri);
        return uri.getQueryParameter(WebvttCueParser.TAG_ITALIC);
    }

    /* renamed from: d */
    public static Uri m6965d(@NonNull Uri uri) {
        C12151d.m7000b(uri);
        String queryParameter = uri.getQueryParameter("m");
        return queryParameter == null ? null : Uri.parse(queryParameter);
    }

    /* renamed from: e */
    public static int m6964e(@NonNull Uri uri) {
        C12151d.m7000b(uri);
        return Integer.valueOf(uri.getQueryParameter("c")).intValue();
    }

    /* renamed from: f */
    public static boolean m6963f(@NonNull Uri uri) {
        C12151d.m7000b(uri);
        return Boolean.valueOf(uri.getQueryParameter("g")).booleanValue();
    }

    /* renamed from: g */
    public static boolean m6962g(@NonNull Uri uri) {
        C12151d.m7000b(uri);
        return Boolean.valueOf(uri.getQueryParameter("s")).booleanValue();
    }

    /* renamed from: h */
    public static boolean m6961h(@NonNull Uri uri) {
        C12151d.m7000b(uri);
        return uri != null && TextUtils.equals("messaging", uri.getScheme()) && TextUtils.equals("avatar", uri.getAuthority());
    }
}
