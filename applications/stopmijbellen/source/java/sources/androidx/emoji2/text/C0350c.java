package androidx.emoji2.text;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import java.util.List;
/* renamed from: androidx.emoji2.text.c */
/* loaded from: classes-dex2jar.jar:androidx/emoji2/text/c.class */
public final class C0350c {

    /* renamed from: androidx.emoji2.text.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/c$a.class */
    public static class C0351a {
        /* renamed from: a */
        public ProviderInfo mo8258a(ResolveInfo resolveInfo) {
            throw null;
        }

        /* renamed from: b */
        public Signature[] mo8256b(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException {
            return packageManager.getPackageInfo(str, 64).signatures;
        }

        /* renamed from: c */
        public List<ResolveInfo> mo8257c(PackageManager packageManager, Intent intent, int i) {
            throw null;
        }
    }

    /* renamed from: androidx.emoji2.text.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/c$b.class */
    public static class C0352b extends C0351a {
        @Override // androidx.emoji2.text.C0350c.C0351a
        /* renamed from: a */
        public ProviderInfo mo8258a(ResolveInfo resolveInfo) {
            return resolveInfo.providerInfo;
        }

        @Override // androidx.emoji2.text.C0350c.C0351a
        /* renamed from: c */
        public List<ResolveInfo> mo8257c(PackageManager packageManager, Intent intent, int i) {
            return packageManager.queryIntentContentProviders(intent, i);
        }
    }

    /* renamed from: androidx.emoji2.text.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/c$c.class */
    public static class C0353c extends C0352b {
        @Override // androidx.emoji2.text.C0350c.C0351a
        /* renamed from: b */
        public Signature[] mo8256b(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException {
            return packageManager.getPackageInfo(str, 64).signatures;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f9  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.emoji2.text.C0372j m8259a(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.C0350c.m8259a(android.content.Context):androidx.emoji2.text.j");
    }
}
