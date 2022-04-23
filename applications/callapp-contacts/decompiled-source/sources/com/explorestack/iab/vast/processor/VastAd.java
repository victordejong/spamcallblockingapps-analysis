package com.explorestack.iab.vast.processor;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.tags.MediaFileTag;
import com.explorestack.iab.vast.tags.d;
import com.explorestack.iab.vast.tags.f;
import com.explorestack.iab.vast.tags.k;
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
    private d appodealExtension;
    private ArrayList<String> clickTrackingUrlList;
    private ArrayList<f> companionTagList;
    private final k creativeTag;
    private ArrayList<String> errorUrlList;
    private ArrayList<String> impressionUrlList;
    private final MediaFileTag pickedMediaFileTag;
    private EnumMap<TrackingEvent, List<String>> trackingEventListMap;
    private VastRequest vastRequest;

    protected VastAd(Parcel parcel) {
        this.creativeTag = (k) parcel.readSerializable();
        this.pickedMediaFileTag = (MediaFileTag) parcel.readSerializable();
        this.companionTagList = (ArrayList) parcel.readSerializable();
        this.impressionUrlList = parcel.createStringArrayList();
        this.errorUrlList = parcel.createStringArrayList();
        this.clickTrackingUrlList = parcel.createStringArrayList();
        this.trackingEventListMap = (EnumMap) parcel.readSerializable();
        this.appodealExtension = (d) parcel.readSerializable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastAd(k kVar, MediaFileTag mediaFileTag) {
        this.creativeTag = kVar;
        this.pickedMediaFileTag = mediaFileTag;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAdParameters() {
        return this.creativeTag.f19309c;
    }

    public d getAppodealExtension() {
        return this.appodealExtension;
    }

    public f getBanner(Context context) {
        ArrayList<f> arrayList = this.companionTagList;
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        Iterator<f> it2 = this.companionTagList.iterator();
        while (it2.hasNext()) {
            f next = it2.next();
            int d2 = next.d("width");
            int d3 = next.d("height");
            if (d2 >= 0 && d3 >= 0) {
                if (Utils.b(context) && d2 == 728 && d3 == 90) {
                    return next;
                }
                if (!Utils.b(context) && d2 == 320 && d3 == 50) {
                    return next;
                }
            }
        }
        return null;
    }

    public String getClickThroughUrl() {
        if (this.creativeTag.f19308b != null) {
            return this.creativeTag.f19308b.f19322a;
        }
        return null;
    }

    public List<String> getClickTrackingUrlList() {
        return this.clickTrackingUrlList;
    }

    public f getCompanion(int i, int i2) {
        ArrayList<f> arrayList = this.companionTagList;
        if (arrayList == null || arrayList.isEmpty()) {
            sendError(600);
            return null;
        }
        HashMap hashMap = new HashMap();
        Iterator<f> it2 = this.companionTagList.iterator();
        while (it2.hasNext()) {
            f next = it2.next();
            int d2 = next.d("width");
            int d3 = next.d("height");
            if (d2 >= 0 && d3 >= 0) {
                float max = Math.max(d2, d3) / Math.min(d2, d3);
                if (Math.min(d2, d3) >= 250 && max <= 2.5d && next.f()) {
                    hashMap.put(Float.valueOf(d2 / d3), next);
                }
            }
        }
        if (!hashMap.isEmpty()) {
            float f = i / i2;
            Set<Float> keySet = hashMap.keySet();
            float floatValue = ((Float) keySet.iterator().next()).floatValue();
            for (Float f2 : keySet) {
                float floatValue2 = f2.floatValue();
                if (Math.abs(floatValue - f) > Math.abs(floatValue2 - f)) {
                    floatValue = floatValue2;
                }
            }
            return (f) hashMap.get(Float.valueOf(floatValue));
        }
        sendError(600);
        return null;
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
        return this.creativeTag.e;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAppodealExtension(d dVar) {
        this.appodealExtension = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setClickTrackingUrlList(ArrayList<String> arrayList) {
        this.clickTrackingUrlList = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCompanionTagList(ArrayList<f> arrayList) {
        this.companionTagList = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setErrorUrlList(ArrayList<String> arrayList) {
        this.errorUrlList = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setImpressionUrlList(ArrayList<String> arrayList) {
        this.impressionUrlList = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
