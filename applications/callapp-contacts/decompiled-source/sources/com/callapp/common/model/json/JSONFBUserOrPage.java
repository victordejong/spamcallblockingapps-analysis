package com.callapp.common.model.json;

import com.callapp.contacts.model.Constants;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONFBUserOrPage.class */
public class JSONFBUserOrPage extends CallAppJSONObject {
    private static final String CLOSE_1_POSTFIX = "_1_close";
    private static final String CLOSE_2_POSTFIX = "_2_close";
    private static final String OPEN_1_POSTFIX = "_1_open";
    private static final String OPEN_2_POSTFIX = "_2_open";
    private static final Map<Integer, String> numToDayString;
    private static final long serialVersionUID = 7479186400432172300L;
    @JsonProperty("about")
    private String about;
    @JsonProperty("overall_star_rating")
    private double avgRating;
    @JsonProperty("bio")
    private String bio;
    @JsonProperty("birthday")
    private String birthday;
    @JsonProperty("category_list")
    private List<JSONFBType> categories;
    @JsonProperty("category")
    private String category;
    @JsonProperty("checkins")
    private Integer checkins;
    @JsonProperty("cover")
    private JSONFBCover cover;
    @JsonProperty("description")
    private String description;
    @JsonProperty("email")
    private String email;
    @JsonProperty("emails")
    private List<String> emails;
    @JsonProperty("first_name")
    private String firstName;
    private String fqlType;
    @JsonProperty("hometown")
    private JSONFBType hometown;
    @JsonIgnore
    private Map<String, String> hours;
    @JsonProperty("id")
    private String id;
    private List<JSONFBHour> jsonfbHoursList;
    @JsonProperty("hours")
    private JsonNode jsonfbHoursRaw;
    @JsonProperty("last_name")
    private String lastName;
    @JsonProperty("link")
    private String link;
    @JsonProperty("location")
    private JSONFBLocation location;
    @JsonProperty("name")
    private String name;
    @JsonProperty("page")
    private JSONFBEntity page;
    @JsonProperty(Constants.EXTRA_PHONE_NUMBER)
    private String phone;
    @JsonProperty("price_range")
    private String priceRange;
    @JsonProperty("username")
    private String username;
    @JsonProperty("website")
    private String website;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        numToDayString = linkedHashMap;
        linkedHashMap.put(1, "sun");
        linkedHashMap.put(2, "mon");
        linkedHashMap.put(3, "tue");
        linkedHashMap.put(4, "wed");
        linkedHashMap.put(5, "thu");
        linkedHashMap.put(6, "fri");
        linkedHashMap.put(7, "sat");
    }

    public String getAbout() {
        return this.about;
    }

    public double getAvgRating() {
        return this.avgRating;
    }

    public String getBio() {
        return this.bio;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public List<JSONFBType> getCategoriesList() {
        return this.categories;
    }

    public String getCategory() {
        return this.category;
    }

    public Integer getCheckins() {
        return this.checkins;
    }

    public JSONFBCover getCover() {
        return this.cover;
    }

    public String getDescription() {
        return this.description;
    }

    public String getEmail() {
        if (StringUtils.b((CharSequence) this.email)) {
            return this.email;
        }
        if (CollectionUtils.b(this.emails)) {
            return this.emails.get(0);
        }
        return null;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public String getFqlType() {
        return this.fqlType;
    }

    public JSONFBType getHometown() {
        return this.hometown;
    }

    public String getHometownName() {
        if (getHometown() != null) {
            return getHometown().getName();
        }
        return null;
    }

    public Map<String, String> getHours() {
        if (this.hours == null && this.jsonfbHoursList != null) {
            this.hours = new HashMap();
            for (JSONFBHour jSONFBHour : this.jsonfbHoursList) {
                this.hours.put(jSONFBHour.getKey(), jSONFBHour.getValue());
            }
        }
        return this.hours;
    }

    public String getId() {
        return this.id;
    }

    public String getLastName() {
        return this.lastName;
    }

    public String getLink() {
        return this.link;
    }

    public JSONFBLocation getLocationObject() {
        return this.location;
    }

    public String getName() {
        return this.name;
    }

    public JSONOpeningHours getOpeningHours() {
        JSONOpeningHours jSONOpeningHours;
        if (CollectionUtils.b(getHours())) {
            JSONOpeningHours jSONOpeningHours2 = new JSONOpeningHours();
            Iterator<Map.Entry<Integer, String>> it2 = numToDayString.entrySet().iterator();
            while (true) {
                jSONOpeningHours = jSONOpeningHours2;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<Integer, String> next = it2.next();
                ArrayList arrayList = new ArrayList(4);
                jSONOpeningHours2.setHoursPerDay(next.getKey().intValue(), arrayList);
                Map<String, String> hours = getHours();
                String str = hours.get(next.getValue() + OPEN_1_POSTFIX);
                Map<String, String> hours2 = getHours();
                String str2 = hours2.get(next.getValue() + CLOSE_1_POSTFIX);
                Map<String, String> hours3 = getHours();
                String str3 = hours3.get(next.getValue() + OPEN_2_POSTFIX);
                Map<String, String> hours4 = getHours();
                String str4 = hours4.get(next.getValue() + CLOSE_2_POSTFIX);
                if (StringUtils.b((CharSequence) str) && StringUtils.b((CharSequence) str2)) {
                    arrayList.add(str + " - " + str2);
                }
                if (StringUtils.b((CharSequence) str3) && StringUtils.b((CharSequence) str4)) {
                    arrayList.add(str3 + " - " + str4);
                }
            }
        } else {
            jSONOpeningHours = null;
        }
        return jSONOpeningHours;
    }

    public JSONFBEntity getPage() {
        return this.page;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getPriceRange() {
        return this.priceRange;
    }

    public JsonNode getRawHours() {
        return this.jsonfbHoursRaw;
    }

    public int getTranslatedPriceRange() {
        if (StringUtils.a((CharSequence) this.priceRange) || StringUtils.b(this.priceRange, "Unspecified")) {
            return 0;
        }
        return this.priceRange.length();
    }

    public String getUsername() {
        return this.username;
    }

    public String getWebsite() {
        return this.website;
    }

    public void setAbout(String str) {
        this.about = str;
    }

    public void setAvgRating(double d2) {
        this.avgRating = d2;
    }

    public void setBio(String str) {
        this.bio = str;
    }

    public void setBirthday(String str) {
        this.birthday = str;
    }

    public void setCategoriesList(List<JSONFBType> list) {
        this.categories = list;
    }

    public void setCategory(String str) {
        this.category = str;
    }

    public void setCheckins(Integer num) {
        this.checkins = num;
    }

    public void setCover(JSONFBCover jSONFBCover) {
        this.cover = jSONFBCover;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setEmails(List<String> list) {
        this.emails = list;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public void setFqlType(String str) {
        this.fqlType = str;
    }

    public void setHometown(JSONFBType jSONFBType) {
        this.hometown = jSONFBType;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setJsonfbHoursList(List<JSONFBHour> list) {
        this.jsonfbHoursList = list;
    }

    public void setJsonfbHoursRaw(JsonNode jsonNode) {
        this.jsonfbHoursRaw = jsonNode;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public void setLink(String str) {
        this.link = str;
    }

    public void setLocationObject(JSONFBLocation jSONFBLocation) {
        this.location = jSONFBLocation;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPage(JSONFBEntity jSONFBEntity) {
        this.page = jSONFBEntity;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setPriceRange(String str) {
        this.priceRange = str;
    }

    public void setUsername(String str) {
        this.username = str;
    }

    public void setWebsite(String str) {
        this.website = str;
    }
}
