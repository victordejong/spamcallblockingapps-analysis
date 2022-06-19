package com.explorestack.iab.vast.processor;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.tags.C9666d;
import com.explorestack.iab.vast.tags.C9668f;
import com.explorestack.iab.vast.tags.C9673k;
import com.explorestack.iab.vast.tags.MediaFileTag;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/processor/VastAd.class */
public class VastAd implements Parcelable {
    public static final Parcelable.Creator<VastAd> CREATOR = new Parcelable.Creator<VastAd>() { // from class: com.explorestack.iab.vast.processor.VastAd.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ VastAd createFromParcel(Parcel parcel) {
            return new VastAd(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ VastAd[] newArray(int i) {
            return new VastAd[i];
        }
    };
    private C9666d appodealExtension;
    private ArrayList<String> clickTrackingUrlList;
    private ArrayList<C9668f> companionTagList;
    private final C9673k creativeTag;
    private ArrayList<String> errorUrlList;
    private ArrayList<String> impressionUrlList;
    private final MediaFileTag pickedMediaFileTag;
    private EnumMap<TrackingEvent, List<String>> trackingEventListMap;
    private VastRequest vastRequest;

    protected VastAd(Parcel parcel) {
        this.creativeTag = (C9673k) parcel.readSerializable();
        this.pickedMediaFileTag = (MediaFileTag) parcel.readSerializable();
        this.companionTagList = (ArrayList) parcel.readSerializable();
        this.impressionUrlList = parcel.createStringArrayList();
        this.errorUrlList = parcel.createStringArrayList();
        this.clickTrackingUrlList = parcel.createStringArrayList();
        this.trackingEventListMap = (EnumMap) parcel.readSerializable();
        this.appodealExtension = (C9666d) parcel.readSerializable();
    }

    public VastAd(C9673k c9673k, MediaFileTag mediaFileTag) {
        this.creativeTag = c9673k;
        this.pickedMediaFileTag = mediaFileTag;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAdParameters() {
        return this.creativeTag.f32819c;
    }

    public C9666d getAppodealExtension() {
        return this.appodealExtension;
    }

    public C9668f getBanner(Context context) {
        ArrayList<C9668f> arrayList = this.companionTagList;
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        Iterator<C9668f> it2 = this.companionTagList.iterator();
        while (it2.hasNext()) {
            C9668f next = it2.next();
            int d = next.m23842d("width");
            int d2 = next.m23842d("height");
            if (d >= 0 && d2 >= 0) {
                if (Utils.m24107b(context) && d == 728 && d2 == 90) {
                    return next;
                }
                if (!Utils.m24107b(context) && d == 320 && d2 == 50) {
                    return next;
                }
            }
        }
        return null;
    }

    public String getClickThroughUrl() {
        if (this.creativeTag.f32818b != null) {
            return this.creativeTag.f32818b.f32843a;
        }
        return null;
    }

    public List<String> getClickTrackingUrlList() {
        return this.clickTrackingUrlList;
    }

    public C9668f getCompanion(int i, int i2) {
        ArrayList<C9668f> arrayList = this.companionTagList;
        if (arrayList == null || arrayList.isEmpty()) {
            sendError(600);
            return null;
        }
        HashMap hashMap = new HashMap();
        Iterator<C9668f> it2 = this.companionTagList.iterator();
        while (it2.hasNext()) {
            C9668f next = it2.next();
            int d = next.m23842d("width");
            int d2 = next.m23842d("height");
            if (d >= 0 && d2 >= 0) {
                float max = Math.max(d, d2) / Math.min(d, d2);
                if (Math.min(d, d2) >= 250 && max <= 2.5d && next.m23854f()) {
                    hashMap.put(Float.valueOf(d / d2), next);
                }
            }
        }
        if (hashMap.isEmpty()) {
            sendError(600);
            return null;
        }
        float f = i / i2;
        Set<Float> keySet = hashMap.keySet();
        float floatValue = ((Float) keySet.iterator().next()).floatValue();
        for (Float f2 : keySet) {
            float floatValue2 = f2.floatValue();
            if (Math.abs(floatValue - f) > Math.abs(floatValue2 - f)) {
                floatValue = floatValue2;
            }
        }
        return (C9668f) hashMap.get(Float.valueOf(floatValue));
    }

    public List<String> getErrorUrlList() {
        return this.errorUrlList;
    }

    public List<String> getImpressionUrlList() {
        return this.impressionUrlList;
    }

    public MediaFileTag getPickedMediaFileTag() {
        return this.pickedMediaFileTag;
    }

    public int getSkipOffsetSec() {
        return this.creativeTag.f32821e;
    }

    public Map<TrackingEvent, List<String>> getTrackingEventListMap() {
        return this.trackingEventListMap;
    }

    void sendError(int i) {
        VastRequest vastRequest = this.vastRequest;
        if (vastRequest != null) {
            vastRequest.sendError(i);
        }
    }

    public void setAppodealExtension(C9666d c9666d) {
        this.appodealExtension = c9666d;
    }

    public void setClickTrackingUrlList(ArrayList<String> arrayList) {
        this.clickTrackingUrlList = arrayList;
    }

    public void setCompanionTagList(ArrayList<C9668f> arrayList) {
        this.companionTagList = arrayList;
    }

    public void setErrorUrlList(ArrayList<String> arrayList) {
        this.errorUrlList = arrayList;
    }

    public void setImpressionUrlList(ArrayList<String> arrayList) {
        this.impressionUrlList = arrayList;
    }

    public void setTrackingEventListMap(EnumMap<TrackingEvent, List<String>> enumMap) {
        this.trackingEventListMap = enumMap;
    }

    public void setVastRequest(VastRequest vastRequest) {
        this.vastRequest = vastRequest;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.creativeTag);
        parcel.writeSerializable(this.pickedMediaFileTag);
        parcel.writeSerializable(this.companionTagList);
        parcel.writeStringList(this.impressionUrlList);
        parcel.writeStringList(this.errorUrlList);
        parcel.writeStringList(this.clickTrackingUrlList);
        parcel.writeSerializable(this.trackingEventListMap);
        parcel.writeSerializable(this.appodealExtension);
    }
}
