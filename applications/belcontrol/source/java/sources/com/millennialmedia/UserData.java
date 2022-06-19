package com.millennialmedia;

import java.util.Date;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/UserData.class */
public class UserData {
    private static final String TAG = "com.millennialmedia.UserData";
    private Integer age;
    private Integer children;
    private String country;
    private String dma;
    private Date dob;
    private String education;
    private String ethnicity;
    private String gender;
    private Integer income;
    private String keywords;
    private String marital;
    private String politics;
    private String postalCode;
    private String state;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/UserData$Education.class */
    public enum Education {
        HIGH_SCHOOL("highschool"),
        SOME_COLLEGE("somecollege"),
        ASSOCIATE("associate"),
        BACHELOR("bachelor"),
        MASTERS("masters"),
        PHD("phd"),
        PROFESSIONAL("professional");
        
        public final String value;

        Education(String str) {
            this.value = str;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/UserData$Ethnicity.class */
    public enum Ethnicity {
        HISPANIC("hispanic"),
        BLACK("africanamerican"),
        ASIAN("asian"),
        INDIAN("indian"),
        MIDDLE_EASTERN("middleeastern"),
        NATIVE_AMERICAN("nativeamerican"),
        PACIFIC_ISLANDER("pacificislander"),
        WHITE("white"),
        OTHER("other");
        
        public final String value;

        Ethnicity(String str) {
            this.value = str;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/UserData$Gender.class */
    public enum Gender {
        MALE("M"),
        FEMALE("F"),
        UNKNOWN("O");
        
        public final String value;

        Gender(String str) {
            this.value = str;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/UserData$Marital.class */
    public enum Marital {
        SINGLE("S"),
        MARRIED("M"),
        DIVORCED("D"),
        RELATIONSHIP("O");
        
        public final String value;

        Marital(String str) {
            this.value = str;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/UserData$Politics.class */
    public enum Politics {
        REPUBLICAN("republican"),
        DEMOCRAT("democrat"),
        CONSERVATIVE("conservative"),
        MODERATE("moderate"),
        LIBERAL("liberal"),
        INDEPENDENT("independent"),
        OTHER("other");
        
        public final String value;

        Politics(String str) {
            this.value = str;
        }
    }

    public Integer getAge() {
        return this.age;
    }

    public Integer getChildren() {
        return this.children;
    }

    public String getCountry() {
        return this.country;
    }

    public String getDma() {
        return this.dma;
    }

    public Date getDob() {
        return this.dob;
    }

    public String getEducation() {
        return this.education;
    }

    public String getEthnicity() {
        return this.ethnicity;
    }

    public String getGender() {
        return this.gender;
    }

    public Integer getIncome() {
        return this.income;
    }

    public String getKeywords() {
        return this.keywords;
    }

    public String getMarital() {
        return this.marital;
    }

    public String getPolitics() {
        return this.politics;
    }

    public String getPostalCode() {
        return this.postalCode;
    }

    public String getState() {
        return this.state;
    }

    public UserData setAge(int i) {
        if (i < 0 || i > 150) {
            MMLog.m4068e(TAG, "Age must be at least 0 and no greater than 150");
        } else {
            this.age = Integer.valueOf(i);
        }
        return this;
    }

    public UserData setChildren(int i) {
        if (i < 0) {
            MMLog.m4068e(TAG, "Number of children must be greater than or equal to zero");
        } else {
            this.children = Integer.valueOf(i);
        }
        return this;
    }

    public UserData setCountry(String str) {
        this.country = str;
        return this;
    }

    public UserData setDma(String str) {
        this.dma = str;
        return this;
    }

    public UserData setDob(Date date) {
        this.dob = date;
        return this;
    }

    public UserData setEducation(Education education) {
        this.education = education.value;
        return this;
    }

    public UserData setEthnicity(Ethnicity ethnicity) {
        this.ethnicity = ethnicity.value;
        return this;
    }

    public UserData setGender(Gender gender) {
        this.gender = gender.value;
        return this;
    }

    public UserData setIncome(int i) {
        this.income = Integer.valueOf(i);
        return this;
    }

    public UserData setKeywords(String str) {
        this.keywords = str;
        return this;
    }

    public UserData setMarital(Marital marital) {
        this.marital = marital.value;
        return this;
    }

    public UserData setPolitics(Politics politics) {
        this.politics = politics.value;
        return this;
    }

    public UserData setPostalCode(String str) {
        this.postalCode = str;
        return this;
    }

    public UserData setState(String str) {
        this.state = str;
        return this;
    }
}
