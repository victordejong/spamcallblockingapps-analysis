package com.aotter.net.trek.tracker;

import android.content.Context;
import android.text.TextUtils;
import com.aotter.net.gson.Gson;
import com.aotter.net.trek.api.TrackerApiClient;
import com.aotter.net.trek.global.AotterTrekApplication;
import com.aotter.net.trek.model.Entity;
import com.aotter.net.trek.model.Location;
import com.aotter.net.trek.model.tracker.ActionType;
import com.aotter.net.trek.model.tracker.EntityType;
import com.aotter.net.trek.model.tracker.PlaceAction;
import com.aotter.net.trek.model.tracker.ReportTracker;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/tracker/TKTracker.class */
public class TKTracker {

    /* renamed from: a */
    public static final String f1583a = "TKTracker";

    /* renamed from: b */
    public Context f1584b;

    /* renamed from: c */
    public String f1585c;

    /* renamed from: f */
    public Gson f1588f = new Gson();

    /* renamed from: g */
    public int f1589g = 0;

    /* renamed from: d */
    public Entity f1586d = new Entity();

    /* renamed from: e */
    public Location f1587e = new Location();

    public TKTracker(Context context) {
        this.f1584b = context;
    }

    /* renamed from: a */
    private void m36326a() {
        TrackerApiClient.getSharedInstance(this.f1584b).report(m36324c());
        if (this.f1586d != null) {
            m36325b();
        }
    }

    /* renamed from: b */
    private void m36325b() {
        this.f1586d = new Entity();
    }

    /* renamed from: c */
    private String m36324c() {
        return new ReportTracker.Builder().device(AotterTrekApplication.mDevice.toJsonObject()).user(AotterTrekApplication.mUser.toJsonObject()).entity(this.f1586d.toJsonObject()).timespan(this.f1589g).sdkVersion("android_2.0.2_rc12").type(this.f1585c).location(this.f1587e.toJsonObject()).build().toJsonString();
    }

    @Deprecated
    public TKTracker isPlaceType() {
        try {
            this.f1586d.setType(EntityType.PLACE.val());
        } catch (Throwable th) {
        }
        return this;
    }

    @Deprecated
    public TKTracker isPostType() {
        try {
            this.f1586d.setType(EntityType.POST.val());
        } catch (Throwable th) {
        }
        return this;
    }

    @Deprecated
    public TKTracker isVideoType() {
        try {
            this.f1586d.setType(EntityType.VIDEO.val());
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker send() {
        if (this.f1586d != null) {
            m36326a();
            return this;
        }
        throw new IllegalArgumentException("Must init a TKTracker");
    }

    public TKTracker setAction(PlaceAction placeAction) {
        try {
            if (!TextUtils.isEmpty(placeAction.val())) {
                this.f1586d.setAction(placeAction.val());
            }
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setActionType(ActionType actionType) {
        try {
            this.f1585c = actionType.val();
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setActionType(String str) {
        try {
            this.f1585c = str;
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setAddress(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.f1586d.setAddress(str);
            }
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setCategories(String[] strArr) {
        if (strArr != null) {
            try {
                if (strArr.length > 0) {
                    this.f1586d.setCategories(strArr);
                }
            } catch (Throwable th) {
            }
        }
        return this;
    }

    public TKTracker setEntityMeta(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                this.f1586d.setMeta(jSONObject);
            } catch (Throwable th) {
            }
        }
        return this;
    }

    public TKTracker setEntityTags(String[] strArr) {
        if (strArr != null) {
            try {
                if (strArr.length > 0) {
                    this.f1586d.setTags(strArr);
                }
            } catch (Throwable th) {
            }
        }
        return this;
    }

    public TKTracker setEntityType(EntityType entityType) {
        try {
            this.f1586d.setType(entityType.val());
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setEntityType(String str) {
        try {
            this.f1586d.setType(str);
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setFavorite(int i) {
        try {
            this.f1586d.setFavorite(i);
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setID(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.f1586d.setID(str);
            }
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setImg(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.f1586d.setImg(str);
            }
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setLocationAddress(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.f1587e.setAddress(str);
            }
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setLocationCategories(String[] strArr) {
        if (strArr != null) {
            try {
                if (strArr.length > 0) {
                    this.f1587e.setCategories(strArr);
                }
            } catch (Throwable th) {
            }
        }
        return this;
    }

    public TKTracker setLocationID(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.f1587e.setID(str);
            }
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setLocationLat(Double d) {
        try {
            this.f1587e.setLat(d);
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setLocationLng(Double d) {
        try {
            this.f1587e.setLng(d);
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setLocationMeta(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                this.f1587e.setMeta(jSONObject);
            } catch (Throwable th) {
            }
        }
        return this;
    }

    public TKTracker setLocationTitle(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.f1587e.setTitle(str);
            }
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setLocationURL(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.f1587e.setUrl(str);
            }
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setPhone(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.f1586d.setPhone(str);
            }
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setPublishedDate(Long l) {
        if (l != null) {
            try {
                this.f1586d.setPublishedDate(l);
            } catch (Throwable th) {
            }
        }
        return this;
    }

    public TKTracker setReference(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.f1586d.setReference(str);
            }
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setTimespan(int i) {
        try {
            this.f1589g = i;
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setTitle(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.f1586d.setTitle(str);
            }
        } catch (Throwable th) {
        }
        return this;
    }

    public TKTracker setURL(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.f1586d.setUrl(str);
            }
        } catch (Throwable th) {
        }
        return this;
    }
}
