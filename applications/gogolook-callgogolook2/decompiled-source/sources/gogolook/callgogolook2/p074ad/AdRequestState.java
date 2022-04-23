package gogolook.callgogolook2.p074ad;

import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0003\u0007\b\tB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0003\n\u000b\f¨\u0006\r"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdRequestState;", "", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "(Lgogolook/callgogolook2/ad/AdUnit;)V", "getAdUnit", "()Lgogolook/callgogolook2/ad/AdUnit;", "End", "Requesting", "Start", "Lgogolook/callgogolook2/ad/AdRequestState$Start;", "Lgogolook/callgogolook2/ad/AdRequestState$Requesting;", "Lgogolook/callgogolook2/ad/AdRequestState$End;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AdRequestState */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdRequestState.class */
public abstract class AdRequestState {
    public final AdUnit adUnit;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÂ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0010\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0007HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdRequestState$End;", "Lgogolook/callgogolook2/ad/AdRequestState;", "_adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "result", "Lgogolook/callgogolook2/ad/AdResult;", "message", "", "(Lgogolook/callgogolook2/ad/AdUnit;Lgogolook/callgogolook2/ad/AdResult;Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "getResult", "()Lgogolook/callgogolook2/ad/AdResult;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.ad.AdRequestState$End */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdRequestState$End.class */
    public static final class End extends AdRequestState {
        public final AdUnit _adUnit;
        public final String message;
        public final AdResult result;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public End(AdUnit adUnit, AdResult adResult, String str) {
            super(adUnit, null);
            C15149k.m377b(adUnit, "_adUnit");
            C15149k.m377b(adResult, "result");
            this._adUnit = adUnit;
            this.result = adResult;
            this.message = str;
        }

        /* renamed from: b */
        public final String m28846b() {
            return this.message;
        }

        /* renamed from: c */
        public final AdResult m28845c() {
            return this.result;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof End)) {
                return false;
            }
            End end = (End) obj;
            return C15149k.m384a(this._adUnit, end._adUnit) && C15149k.m384a(this.result, end.result) && C15149k.m384a((Object) this.message, (Object) end.message);
        }

        public int hashCode() {
            AdUnit adUnit = this._adUnit;
            int i = 0;
            int hashCode = adUnit != null ? adUnit.hashCode() : 0;
            AdResult adResult = this.result;
            int hashCode2 = adResult != null ? adResult.hashCode() : 0;
            String str = this.message;
            if (str != null) {
                i = str.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            return "End(_adUnit=" + this._adUnit + ", result=" + this.result + ", message=" + this.message + ")";
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0005\u001a\u00020\u0003HÂ\u0003J\u0013\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdRequestState$Requesting;", "Lgogolook/callgogolook2/ad/AdRequestState;", "_adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "(Lgogolook/callgogolook2/ad/AdUnit;)V", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.ad.AdRequestState$Requesting */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdRequestState$Requesting.class */
    public static final class Requesting extends AdRequestState {
        public final AdUnit _adUnit;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Requesting(AdUnit adUnit) {
            super(adUnit, null);
            C15149k.m377b(adUnit, "_adUnit");
            this._adUnit = adUnit;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Requesting) && C15149k.m384a(this._adUnit, ((Requesting) obj)._adUnit);
            }
            return true;
        }

        public int hashCode() {
            AdUnit adUnit = this._adUnit;
            return adUnit != null ? adUnit.hashCode() : 0;
        }

        public String toString() {
            return "Requesting(_adUnit=" + this._adUnit + ")";
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0005\u001a\u00020\u0003HÂ\u0003J\u0013\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdRequestState$Start;", "Lgogolook/callgogolook2/ad/AdRequestState;", "_adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "(Lgogolook/callgogolook2/ad/AdUnit;)V", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.ad.AdRequestState$Start */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdRequestState$Start.class */
    public static final class Start extends AdRequestState {
        public final AdUnit _adUnit;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Start(AdUnit adUnit) {
            super(adUnit, null);
            C15149k.m377b(adUnit, "_adUnit");
            this._adUnit = adUnit;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Start) && C15149k.m384a(this._adUnit, ((Start) obj)._adUnit);
            }
            return true;
        }

        public int hashCode() {
            AdUnit adUnit = this._adUnit;
            return adUnit != null ? adUnit.hashCode() : 0;
        }

        public String toString() {
            return "Start(_adUnit=" + this._adUnit + ")";
        }
    }

    public AdRequestState(AdUnit adUnit) {
        this.adUnit = adUnit;
    }

    public /* synthetic */ AdRequestState(AdUnit adUnit, C15145g gVar) {
        this(adUnit);
    }

    /* renamed from: a */
    public final AdUnit m28847a() {
        return this.adUnit;
    }
}
