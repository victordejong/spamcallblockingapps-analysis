package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\b\u0087\b\u0018��2\u00020\u0001:\u0001HB\u0093\u0001\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f\u0012\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020��\u0018\u00010\f\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010#\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\bF\u0010GJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0012\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J\u0012\u0010\n\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u0004J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0004J\u0018\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\fHÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020��\u0018\u00010\fHÆ\u0003¢\u0006\u0004\b\u000f\u0010\u000eJ\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0004J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J¶\u0001\u0010$\u001a\u00020��2\b\b\u0002\u0010\u0017\u001a\u00020\u00022\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f2\u0010\b\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020��\u0018\u00010\f2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0014HÆ\u0001¢\u0006\u0004\b$\u0010%J\u0010\u0010&\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b&\u0010\u0004J\u0010\u0010(\u001a\u00020'HÖ\u0001¢\u0006\u0004\b(\u0010)J\u001a\u0010,\u001a\u00020\u00142\b\u0010+\u001a\u0004\u0018\u00010*HÖ\u0003¢\u0006\u0004\b,\u0010-J\u0010\u0010.\u001a\u00020'HÖ\u0001¢\u0006\u0004\b.\u0010)J \u00103\u001a\u0002022\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020'HÖ\u0001¢\u0006\u0004\b3\u00104R\u001e\u0010!\u001a\u0004\u0018\u00010\u00108\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b!\u00105\u001a\u0004\b6\u0010\u0012R\u001e\u0010\"\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\"\u00107\u001a\u0004\b8\u0010\u0004R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0019\u00107\u001a\u0004\b9\u0010\u0004R$\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010:\u001a\u0004\b;\u0010\u000eR\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0018\u00107\u001a\u0004\b<\u0010\u0004R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001b\u00107\u001a\u0004\b=\u0010\u0004R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u00107\u001a\u0004\b>\u0010\u0004R\u001c\u0010\u0017\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0017\u00107\u001a\u0004\b?\u0010\u0004R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u00107\u001a\u0004\b@\u0010\u0004R\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001d\u00107\u001a\u0004\bA\u0010\u0004R$\u0010 \u001a\n\u0012\u0004\u0012\u00020��\u0018\u00010\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b \u0010:\u001a\u0004\bB\u0010\u000eR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u00107\u001a\u0004\bC\u0010\u0004R\u001e\u0010#\u001a\u0004\u0018\u00010\u00148\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b#\u0010D\u001a\u0004\bE\u0010\u0016¨\u0006I"}, d2 = {"Lcom/truecaller/ads/offline/dto/Component;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "", "component9", "()Ljava/util/List;", "component10", "Lcom/truecaller/ads/offline/dto/Component$OnClick;", "component11", "()Lcom/truecaller/ads/offline/dto/Component$OnClick;", "component12", "", "component13", "()Ljava/lang/Boolean;", "type", "text", "src", "altText", "label", AnalyticsConstants.KEY, "value", "hint", "options", "components", "onClick", "validationRegex", "showAutoComplete", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/truecaller/ads/offline/dto/Component$OnClick;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/truecaller/ads/offline/dto/Component;", "toString", "", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Lcom/truecaller/ads/offline/dto/Component$OnClick;", "getOnClick", "Ljava/lang/String;", "getValidationRegex", "getSrc", "Ljava/util/List;", "getOptions", "getText", "getLabel", "getAltText", "getType", "getKey", "getValue", "getComponents", "getHint", "Ljava/lang/Boolean;", "getShowAutoComplete", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/truecaller/ads/offline/dto/Component$OnClick;Ljava/lang/String;Ljava/lang/Boolean;)V", "OnClick", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/Component.class */
public final class Component implements Parcelable {
    public static final Parcelable.Creator<Component> CREATOR = new C2827a();
    @b("altText")
    private final String altText;
    @b("components")
    private final List<Component> components;
    @b("hint")
    private final String hint;
    @b(AnalyticsConstants.KEY)
    private final String key;
    @b("label")
    private final String label;
    @b("onClick")
    private final OnClick onClick;
    @b("options")
    private final List<String> options;
    @b("isAutoComplete")
    private final Boolean showAutoComplete;
    @b("src")
    private final String src;
    @b("text")
    private final String text;
    @b("type")
    private final String type;
    @b("validation")
    private final String validationRegex;
    @b("value")
    private final String value;

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J$\u0010\b\u001a\u00020��2\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0004J\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u0013\u0010\rJ \u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019R\u001c\u0010\u0007\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u001a\u001a\u0004\b\u001b\u0010\u0004R\u001c\u0010\u0006\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u001a\u001a\u0004\b\u001c\u0010\u0004¨\u0006\u001f"}, d2 = {"Lcom/truecaller/ads/offline/dto/Component$OnClick;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "component2", "action", "url", "copy", "(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/ads/offline/dto/Component$OnClick;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getUrl", "getAction", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/Component$OnClick.class */
    public static final class OnClick implements Parcelable {
        public static final Parcelable.Creator<OnClick> CREATOR = new C2826a();
        @b("action")
        private final String action;
        @b("url")
        private final String url;

        /* renamed from: com.truecaller.ads.offline.dto.Component$OnClick$a */
        /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/Component$OnClick$a.class */
        public static final class C2826a implements Parcelable.Creator<OnClick> {
            @Override // android.os.Parcelable.Creator
            public OnClick createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new OnClick(parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public OnClick[] newArray(int i) {
                return new OnClick[i];
            }
        }

        public OnClick(String str, String str2) {
            l.e(str, "action");
            l.e(str2, "url");
            this.action = str;
            this.url = str2;
        }

        public static /* synthetic */ OnClick copy$default(OnClick onClick, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = onClick.action;
            }
            if ((i & 2) != 0) {
                str2 = onClick.url;
            }
            return onClick.copy(str, str2);
        }

        public final String component1() {
            return this.action;
        }

        public final String component2() {
            return this.url;
        }

        public final OnClick copy(String str, String str2) {
            l.e(str, "action");
            l.e(str2, "url");
            return new OnClick(str, str2);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof OnClick)) {
                    return false;
                }
                OnClick onClick = (OnClick) obj;
                return l.a(this.action, onClick.action) && l.a(this.url, onClick.url);
            }
            return true;
        }

        public final String getAction() {
            return this.action;
        }

        public final String getUrl() {
            return this.url;
        }

        public int hashCode() {
            String str = this.action;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.url;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("OnClick(action=");
            m8728C.append(this.action);
            m8728C.append(", url=");
            return C22128a.m8618h(m8728C, this.url, ")");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeString(this.action);
            parcel.writeString(this.url);
        }
    }

    /* renamed from: com.truecaller.ads.offline.dto.Component$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/Component$a.class */
    public static final class C2827a implements Parcelable.Creator<Component> {
        @Override // android.os.Parcelable.Creator
        public Component createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Boolean bool;
            l.e(parcel, "in");
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            String readString5 = parcel.readString();
            String readString6 = parcel.readString();
            String readString7 = parcel.readString();
            String readString8 = parcel.readString();
            ArrayList<String> createStringArrayList = parcel.createStringArrayList();
            if (parcel.readInt() != 0) {
                int readInt = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(readInt);
                while (true) {
                    arrayList = arrayList2;
                    if (readInt == 0) {
                        break;
                    }
                    arrayList2.add(Component.CREATOR.createFromParcel(parcel));
                    readInt--;
                }
            } else {
                arrayList = null;
            }
            OnClick createFromParcel = parcel.readInt() != 0 ? OnClick.CREATOR.createFromParcel(parcel) : null;
            String readString9 = parcel.readString();
            if (parcel.readInt() != 0) {
                bool = Boolean.valueOf(parcel.readInt() != 0);
            } else {
                bool = null;
            }
            return new Component(readString, readString2, readString3, readString4, readString5, readString6, readString7, readString8, createStringArrayList, arrayList, createFromParcel, readString9, bool);
        }

        @Override // android.os.Parcelable.Creator
        public Component[] newArray(int i) {
            return new Component[i];
        }
    }

    public Component(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, List<String> list, List<Component> list2, OnClick onClick, String str9, Boolean bool) {
        l.e(str, "type");
        this.type = str;
        this.text = str2;
        this.src = str3;
        this.altText = str4;
        this.label = str5;
        this.key = str6;
        this.value = str7;
        this.hint = str8;
        this.options = list;
        this.components = list2;
        this.onClick = onClick;
        this.validationRegex = str9;
        this.showAutoComplete = bool;
    }

    public static /* synthetic */ Component copy$default(Component component, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, List list, List list2, OnClick onClick, String str9, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            str = component.type;
        }
        if ((i & 2) != 0) {
            str2 = component.text;
        }
        if ((i & 4) != 0) {
            str3 = component.src;
        }
        if ((i & 8) != 0) {
            str4 = component.altText;
        }
        if ((i & 16) != 0) {
            str5 = component.label;
        }
        if ((i & 32) != 0) {
            str6 = component.key;
        }
        if ((i & 64) != 0) {
            str7 = component.value;
        }
        if ((i & 128) != 0) {
            str8 = component.hint;
        }
        if ((i & 256) != 0) {
            list = component.options;
        }
        if ((i & 512) != 0) {
            list2 = component.components;
        }
        if ((i & 1024) != 0) {
            onClick = component.onClick;
        }
        if ((i & 2048) != 0) {
            str9 = component.validationRegex;
        }
        if ((i & 4096) != 0) {
            bool = component.showAutoComplete;
        }
        return component.copy(str, str2, str3, str4, str5, str6, str7, str8, list, list2, onClick, str9, bool);
    }

    public final String component1() {
        return this.type;
    }

    public final List<Component> component10() {
        return this.components;
    }

    public final OnClick component11() {
        return this.onClick;
    }

    public final String component12() {
        return this.validationRegex;
    }

    public final Boolean component13() {
        return this.showAutoComplete;
    }

    public final String component2() {
        return this.text;
    }

    public final String component3() {
        return this.src;
    }

    public final String component4() {
        return this.altText;
    }

    public final String component5() {
        return this.label;
    }

    public final String component6() {
        return this.key;
    }

    public final String component7() {
        return this.value;
    }

    public final String component8() {
        return this.hint;
    }

    public final List<String> component9() {
        return this.options;
    }

    public final Component copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, List<String> list, List<Component> list2, OnClick onClick, String str9, Boolean bool) {
        l.e(str, "type");
        return new Component(str, str2, str3, str4, str5, str6, str7, str8, list, list2, onClick, str9, bool);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Component)) {
                return false;
            }
            Component component = (Component) obj;
            return l.a(this.type, component.type) && l.a(this.text, component.text) && l.a(this.src, component.src) && l.a(this.altText, component.altText) && l.a(this.label, component.label) && l.a(this.key, component.key) && l.a(this.value, component.value) && l.a(this.hint, component.hint) && l.a(this.options, component.options) && l.a(this.components, component.components) && l.a(this.onClick, component.onClick) && l.a(this.validationRegex, component.validationRegex) && l.a(this.showAutoComplete, component.showAutoComplete);
        }
        return true;
    }

    public final String getAltText() {
        return this.altText;
    }

    public final List<Component> getComponents() {
        return this.components;
    }

    public final String getHint() {
        return this.hint;
    }

    public final String getKey() {
        return this.key;
    }

    public final String getLabel() {
        return this.label;
    }

    public final OnClick getOnClick() {
        return this.onClick;
    }

    public final List<String> getOptions() {
        return this.options;
    }

    public final Boolean getShowAutoComplete() {
        return this.showAutoComplete;
    }

    public final String getSrc() {
        return this.src;
    }

    public final String getText() {
        return this.text;
    }

    public final String getType() {
        return this.type;
    }

    public final String getValidationRegex() {
        return this.validationRegex;
    }

    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        String str = this.type;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.text;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.src;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.altText;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.label;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.key;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.value;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.hint;
        int hashCode8 = str8 != null ? str8.hashCode() : 0;
        List<String> list = this.options;
        int hashCode9 = list != null ? list.hashCode() : 0;
        List<Component> list2 = this.components;
        int hashCode10 = list2 != null ? list2.hashCode() : 0;
        OnClick onClick = this.onClick;
        int hashCode11 = onClick != null ? onClick.hashCode() : 0;
        String str9 = this.validationRegex;
        int hashCode12 = str9 != null ? str9.hashCode() : 0;
        Boolean bool = this.showAutoComplete;
        if (bool != null) {
            i = bool.hashCode();
        }
        return (((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Component(type=");
        m8728C.append(this.type);
        m8728C.append(", text=");
        m8728C.append(this.text);
        m8728C.append(", src=");
        m8728C.append(this.src);
        m8728C.append(", altText=");
        m8728C.append(this.altText);
        m8728C.append(", label=");
        m8728C.append(this.label);
        m8728C.append(", key=");
        m8728C.append(this.key);
        m8728C.append(", value=");
        m8728C.append(this.value);
        m8728C.append(", hint=");
        m8728C.append(this.hint);
        m8728C.append(", options=");
        m8728C.append(this.options);
        m8728C.append(", components=");
        m8728C.append(this.components);
        m8728C.append(", onClick=");
        m8728C.append(this.onClick);
        m8728C.append(", validationRegex=");
        m8728C.append(this.validationRegex);
        m8728C.append(", showAutoComplete=");
        m8728C.append(this.showAutoComplete);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.type);
        parcel.writeString(this.text);
        parcel.writeString(this.src);
        parcel.writeString(this.altText);
        parcel.writeString(this.label);
        parcel.writeString(this.key);
        parcel.writeString(this.value);
        parcel.writeString(this.hint);
        parcel.writeStringList(this.options);
        List<Component> list = this.components;
        if (list != null) {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            for (Component component : list) {
                component.writeToParcel(parcel, 0);
            }
        } else {
            parcel.writeInt(0);
        }
        OnClick onClick = this.onClick;
        if (onClick != null) {
            parcel.writeInt(1);
            onClick.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.validationRegex);
        Boolean bool = this.showAutoComplete;
        if (bool == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(bool.booleanValue() ? 1 : 0);
    }
}
