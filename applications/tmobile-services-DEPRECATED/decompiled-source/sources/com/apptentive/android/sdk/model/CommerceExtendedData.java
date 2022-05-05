package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.model.ExtendedData;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/CommerceExtendedData.class */
public class CommerceExtendedData extends ExtendedData {
    private static final String KEY_AFFILIATION = "affiliation";
    private static final String KEY_CURRENCY = "currency";
    private static final String KEY_ID = "id";
    private static final String KEY_ITEMS = "items";
    private static final String KEY_REVENUE = "revenue";
    private static final String KEY_SHIPPING = "shipping";
    private static final String KEY_TAX = "tax";
    private static final int VERSION = 1;
    private String affiliation;
    private String currency;

    /* renamed from: id */
    private Object f6448id;
    private List<Item> items;
    private double revenue;
    private double shipping;
    private double tax;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/CommerceExtendedData$Item.class */
    public static class Item implements Serializable {
        private static final String KEY_CATEGORY = "category";
        private static final String KEY_CURRENCY = "currency";
        private static final String KEY_ID = "id";
        private static final String KEY_NAME = "name";
        private static final String KEY_PRICE = "price";
        private static final String KEY_QUANTITY = "quantity";
        private static final long serialVersionUID = -1269601398569802633L;
        private String category;
        private String currency;

        /* renamed from: id */
        private Object f6449id;
        private String name;
        private double price;
        private double quantity;

        public Item() {
        }

        public Item(Object obj, String str, String str2, double d, double d2, String str3) throws JSONException {
            if (obj != null) {
                setId(obj);
            }
            if (str != null) {
                setName(str);
            }
            if (str2 != null) {
                setCategory(str2);
            }
            setPrice(d);
            setQuantity(d2);
            if (str3 != null) {
                setCurrency(str3);
            }
        }

        public Item(String str) throws JSONException {
            JSONObject jSONObject = new JSONObject(str);
            this.f6449id = jSONObject.opt("id");
            this.name = jSONObject.optString(KEY_NAME, null);
            this.category = jSONObject.optString(KEY_CATEGORY, null);
            this.price = jSONObject.optDouble("price", 0.0d);
            this.quantity = jSONObject.optDouble("quantity", 0.0d);
            this.currency = jSONObject.optString("currency", null);
        }

        public Item setCategory(String str) throws JSONException {
            this.category = str;
            return this;
        }

        public Item setCurrency(String str) throws JSONException {
            this.currency = str;
            return this;
        }

        public Item setId(Object obj) throws JSONException {
            this.f6449id = obj;
            return this;
        }

        public Item setName(String str) throws JSONException {
            this.name = str;
            return this;
        }

        public Item setPrice(double d) throws JSONException {
            this.price = d;
            return this;
        }

        public Item setQuantity(double d) throws JSONException {
            this.quantity = d;
            return this;
        }

        public JSONObject toJsonObject() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", this.f6449id);
            jSONObject.put(KEY_NAME, this.name);
            jSONObject.put(KEY_CATEGORY, this.category);
            jSONObject.put("price", this.price);
            jSONObject.put("quantity", this.quantity);
            jSONObject.put("currency", this.currency);
            return jSONObject;
        }
    }

    public CommerceExtendedData() {
    }

    public CommerceExtendedData(Object obj, String str, double d, double d2, double d3, String str2) throws JSONException {
        setId(obj);
        setAffiliation(str);
        setRevenue(d);
        setShipping(d2);
        setTax(d3);
        setCurrency(str2);
    }

    public CommerceExtendedData(String str) throws JSONException {
        super(str);
        JSONObject jSONObject = new JSONObject(str);
        setId(jSONObject.opt("id"));
        setAffiliation(jSONObject.optString("affiliation", null));
        setRevenue(jSONObject.optDouble(KEY_REVENUE, 0.0d));
        setShipping(jSONObject.optDouble("shipping", 0.0d));
        setTax(jSONObject.optDouble("tax", 0.0d));
        setCurrency(jSONObject.optString("currency", null));
        setItems(jSONObject.optJSONArray("items"));
    }

    public CommerceExtendedData addItem(Item item) throws JSONException {
        if (this.items == null) {
            this.items = new ArrayList();
        }
        this.items.add(item);
        return this;
    }

    @Override // com.apptentive.android.sdk.model.ExtendedData
    protected void init() {
        this.items = new ArrayList();
        setType(ExtendedData.Type.commerce);
        setVersion(1);
    }

    public CommerceExtendedData setAffiliation(String str) throws JSONException {
        this.affiliation = str;
        return this;
    }

    public CommerceExtendedData setCurrency(String str) throws JSONException {
        this.currency = str;
        return this;
    }

    public CommerceExtendedData setId(Object obj) throws JSONException {
        this.f6448id = obj;
        return this;
    }

    public CommerceExtendedData setItems(JSONArray jSONArray) throws JSONException {
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                addItem(new Item(jSONArray.getJSONObject(i).toString()));
            }
        }
        return this;
    }

    public CommerceExtendedData setRevenue(double d) throws JSONException {
        this.revenue = d;
        return this;
    }

    public CommerceExtendedData setShipping(double d) throws JSONException {
        this.shipping = d;
        return this;
    }

    public CommerceExtendedData setTax(double d) throws JSONException {
        this.tax = d;
        return this;
    }

    @Override // com.apptentive.android.sdk.model.ExtendedData
    public JSONObject toJsonObject() throws JSONException {
        JSONObject jsonObject = super.toJsonObject();
        jsonObject.put("id", this.f6448id);
        jsonObject.put("affiliation", this.affiliation);
        jsonObject.put(KEY_REVENUE, this.revenue);
        jsonObject.put("shipping", this.shipping);
        jsonObject.put("tax", this.tax);
        jsonObject.put("currency", this.currency);
        JSONArray jSONArray = new JSONArray();
        for (Item item : this.items) {
            jSONArray.put(item.toJsonObject());
        }
        jsonObject.put("items", jSONArray);
        return jsonObject;
    }
}
