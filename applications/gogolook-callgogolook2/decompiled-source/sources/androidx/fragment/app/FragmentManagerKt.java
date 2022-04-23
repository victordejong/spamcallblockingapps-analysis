package androidx.fragment.app;

import kotlin.Metadata;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a0\u0010��\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\bH\u0086\b\u001a0\u0010\t\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\bH\u0086\b\u001a:\u0010\n\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\bH\u0087\b¨\u0006\f"}, m815d2 = {"commit", "", "Landroidx/fragment/app/FragmentManager;", "allowStateLoss", "", "body", "Lkotlin/Function1;", "Landroidx/fragment/app/FragmentTransaction;", "Lkotlin/ExtensionFunctionType;", "commitNow", "transaction", "now", "fragment-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerKt.class */
public final class FragmentManagerKt {
    public static final void commit(FragmentManager fragmentManager, boolean z, AbstractC15118l<? super FragmentTransaction, C14989s> lVar) {
        C15149k.m377b(fragmentManager, "$this$commit");
        C15149k.m377b(lVar, "body");
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        C15149k.m383a((Object) beginTransaction, "beginTransaction()");
        lVar.invoke(beginTransaction);
        if (z) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }

    public static /* synthetic */ void commit$default(FragmentManager fragmentManager, boolean z, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        C15149k.m377b(fragmentManager, "$this$commit");
        C15149k.m377b(lVar, "body");
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        C15149k.m383a((Object) beginTransaction, "beginTransaction()");
        lVar.invoke(beginTransaction);
        if (z) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }

    public static final void commitNow(FragmentManager fragmentManager, boolean z, AbstractC15118l<? super FragmentTransaction, C14989s> lVar) {
        C15149k.m377b(fragmentManager, "$this$commitNow");
        C15149k.m377b(lVar, "body");
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        C15149k.m383a((Object) beginTransaction, "beginTransaction()");
        lVar.invoke(beginTransaction);
        if (z) {
            beginTransaction.commitNowAllowingStateLoss();
        } else {
            beginTransaction.commitNow();
        }
    }

    public static /* synthetic */ void commitNow$default(FragmentManager fragmentManager, boolean z, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        C15149k.m377b(fragmentManager, "$this$commitNow");
        C15149k.m377b(lVar, "body");
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        C15149k.m383a((Object) beginTransaction, "beginTransaction()");
        lVar.invoke(beginTransaction);
        if (z) {
            beginTransaction.commitNowAllowingStateLoss();
        } else {
            beginTransaction.commitNow();
        }
    }

    public static final void transaction(FragmentManager fragmentManager, boolean z, boolean z2, AbstractC15118l<? super FragmentTransaction, C14989s> lVar) {
        C15149k.m377b(fragmentManager, "$this$transaction");
        C15149k.m377b(lVar, "body");
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        C15149k.m383a((Object) beginTransaction, "beginTransaction()");
        lVar.invoke(beginTransaction);
        if (z) {
            if (z2) {
                beginTransaction.commitNowAllowingStateLoss();
            } else {
                beginTransaction.commitNow();
            }
        } else if (z2) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }

    public static /* synthetic */ void transaction$default(FragmentManager fragmentManager, boolean z, boolean z2, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        C15149k.m377b(fragmentManager, "$this$transaction");
        C15149k.m377b(lVar, "body");
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        C15149k.m383a((Object) beginTransaction, "beginTransaction()");
        lVar.invoke(beginTransaction);
        if (z) {
            if (z2) {
                beginTransaction.commitNowAllowingStateLoss();
            } else {
                beginTransaction.commitNow();
            }
        } else if (z2) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }
}
