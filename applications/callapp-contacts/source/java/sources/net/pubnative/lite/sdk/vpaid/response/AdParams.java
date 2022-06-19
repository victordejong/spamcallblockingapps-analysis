package net.pubnative.lite.sdk.vpaid.response;

import com.iab.omid.library.pubnativenet.adsession.C16426j;
import java.util.ArrayList;
import java.util.List;
import net.pubnative.lite.sdk.vpaid.models.vast.Tracking;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/response/AdParams.class */
public class AdParams {
    private String adParams;
    private int duration;
    private String endCardRedirectUrl;

    /* renamed from: id */
    private String f67090id;
    private String skipTime;
    private String videoRedirectUrl;
    private boolean vpaid;
    private String vpaidJsUrl;
    private int publisherSkipSeconds = 0;
    private List<String> videoFileUrlsList = new ArrayList();
    private List<String> endCardUrlList = new ArrayList();
    private final List<String> impressions = new ArrayList();
    private final List<String> companionCreativeViewEvents = new ArrayList();
    private List<String> videoClicks = new ArrayList();
    private List<String> endCardClicks = new ArrayList();
    private final List<Tracking> events = new ArrayList();
    List<C16426j> verificationScriptResources = new ArrayList();

    public void addEvents(List<Tracking> list) {
        List<Tracking> list2 = this.events;
        if (list2 == null || list == null) {
            return;
        }
        list2.addAll(list);
    }

    public String getAdParams() {
        return this.adParams;
    }

    public List<String> getCompanionCreativeViewEvents() {
        return this.companionCreativeViewEvents;
    }

    public int getDuration() {
        return this.duration;
    }

    public List<String> getEndCardClicks() {
        return this.endCardClicks;
    }

    public String getEndCardRedirectUrl() {
        return this.endCardRedirectUrl;
    }

    public List<String> getEndCardUrlList() {
        return this.endCardUrlList;
    }

    public List<Tracking> getEvents() {
        return this.events;
    }

    public String getId() {
        return this.f67090id;
    }

    public List<String> getImpressions() {
        return this.impressions;
    }

    public int getPublisherSkipSeconds() {
        return this.publisherSkipSeconds;
    }

    public String getSkipTime() {
        return this.skipTime;
    }

    public List<C16426j> getVerificationScriptResources() {
        return this.verificationScriptResources;
    }

    public List<String> getVideoClicks() {
        return this.videoClicks;
    }

    public List<String> getVideoFileUrlsList() {
        return this.videoFileUrlsList;
    }

    public String getVideoRedirectUrl() {
        return this.videoRedirectUrl;
    }

    public String getVpaidJsUrl() {
        return this.vpaidJsUrl;
    }

    public boolean isVpaid() {
        return this.vpaid;
    }

    public void setAdParams(String str) {
        this.adParams = str;
    }

    public void setCompanionCreativeViewEvents(List<String> list) {
        this.companionCreativeViewEvents.addAll(list);
    }

    public void setDuration(int i) {
        this.duration = i;
    }

    public void setEndCardClicks(List<String> list) {
        this.endCardClicks = list;
    }

    public void setEndCardRedirectUrl(String str) {
        this.endCardRedirectUrl = str;
    }

    public void setEndCardUrlList(List<String> list) {
        this.endCardUrlList = list;
    }

    public void setId(String str) {
        this.f67090id = str;
    }

    public void setImpressions(List<String> list) {
        this.impressions.addAll(list);
    }

    public void setPublisherSkipSeconds(int i) {
        this.publisherSkipSeconds = i;
    }

    public void setSkipTime(String str) {
        this.skipTime = str;
    }

    public void setVerificationScriptResources(List<C16426j> list) {
        this.verificationScriptResources = list;
    }

    public void setVideoClicks(List<String> list) {
        this.videoClicks = list;
    }

    public void setVideoFileUrlsList(List<String> list) {
        this.videoFileUrlsList = list;
    }

    public void setVideoRedirectUrl(String str) {
        this.videoRedirectUrl = str;
    }

    public void setVpaid() {
        this.vpaid = true;
    }

    public void setVpaidJsUrl(String str) {
        this.vpaidJsUrl = str;
    }
}
