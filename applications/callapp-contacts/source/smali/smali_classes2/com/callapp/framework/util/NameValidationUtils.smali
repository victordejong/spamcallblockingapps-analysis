.class public Lcom/callapp/framework/util/NameValidationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 63

    const-string v0, "ALABAMA"

    const-string v1, "ALASKA"

    const-string v2, "ARIZONA"

    const-string v3, "ARKANSAS"

    const-string v4, "CALIFORNIA"

    const-string v5, "COLORADO"

    const-string v6, "CONNECTICUT"

    const-string v7, "DELAWARE"

    const-string v8, "FLORIDA"

    const-string v9, "GEORGIA"

    const-string v10, "HAWAII"

    const-string v11, "IDAHO"

    const-string v12, "ILLINOIS"

    const-string v13, "INDIANA"

    const-string v14, "IOWA"

    const-string v15, "KANSAS"

    const-string v16, "KENTUCKY"

    const-string v17, "LOUISIANA"

    const-string v18, "MAINE"

    const-string v19, "MARYLAND"

    const-string v20, "MASSACHUSETTS"

    const-string v21, "MICHIGAN"

    const-string v22, "MINNESOTA"

    const-string v23, "MISSISSIPPI"

    const-string v24, "MISSOURI"

    const-string v25, "MONTANA"

    const-string v26, "NEBRASKA"

    const-string v27, "NEVADA"

    const-string v28, "NEW HAMPSHIRE"

    const-string v29, "NEW JERSEY"

    const-string v30, "NEW MEXICO"

    const-string v31, "NEW YORK"

    const-string v32, "NORTH CAROLINA"

    const-string v33, "NORTH DAKOTA"

    const-string v34, "OHIO"

    const-string v35, "OKLAHOMA"

    const-string v36, "OREGON"

    const-string v37, "PENNSYLVANIA"

    const-string v38, "RHODE ISLAND"

    const-string v39, "SOUTH CAROLINA"

    const-string v40, "SOUTH DAKOTA"

    const-string v41, "TENNESSEE"

    const-string v42, "TEXAS"

    const-string v43, "UTAH"

    const-string v44, "VERMONT"

    const-string v45, "VIRGINIA"

    const-string v46, "WASHINGTON"

    const-string v47, "WEST VIRGINIA"

    const-string v48, "WISCONSIN"

    const-string v49, "WYOMING"

    .line 11
    filled-new-array/range {v0 .. v49}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callapp/framework/util/NameValidationUtils;->a:[Ljava/lang/String;

    const-string v1, " AL"

    const-string v2, " AK"

    const-string v3, " AZ"

    const-string v4, " AR"

    const-string v5, " CA"

    const-string v6, " CO"

    const-string v7, " CT"

    const-string v8, " DE"

    const-string v9, " DC"

    const-string v10, " FL"

    const-string v11, " GA"

    const-string v12, " HI"

    const-string v13, " ID"

    const-string v14, " IL"

    const-string v15, " IN"

    const-string v16, " IA"

    const-string v17, "KS"

    const-string v18, " KY"

    const-string v19, " LA"

    const-string v20, " ME"

    const-string v21, " MD"

    const-string v22, " MA"

    const-string v23, " MI"

    const-string v24, " MN"

    const-string v25, " MS"

    const-string v26, " MO"

    const-string v27, " MT"

    const-string v28, " NE"

    const-string v29, " NV"

    const-string v30, " NH"

    const-string v31, " NJ"

    const-string v32, " NM"

    const-string v33, " NY"

    const-string v34, " NC"

    const-string v35, " ND"

    const-string v36, " OH"

    const-string v37, " OK"

    const-string v38, " OR"

    const-string v39, " PA"

    const-string v40, "RI"

    const-string v41, " SC"

    const-string v42, " SD"

    const-string v43, " TN"

    const-string v44, " TX"

    const-string v45, " UT"

    const-string v46, " VT"

    const-string v47, " VA"

    const-string v48, " WA"

    const-string v49, " WV"

    const-string v50, " WI"

    const-string v51, " WY"

    const-string v52, " AS"

    const-string v53, " GU"

    const-string v54, " MP"

    const-string v55, " PR"

    const-string v56, " VI"

    const-string v57, " FM"

    const-string v58, " MH"

    const-string v59, " PW"

    const-string v60, " AA"

    const-string v61, " AE"

    const-string v62, " AP"

    .line 17
    filled-new-array/range {v1 .. v62}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/callapp/framework/util/NameValidationUtils;->b:[Ljava/lang/String;

    .line 23
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/callapp/framework/util/NameValidationUtils;->c:Ljava/util/Set;

    const-string v3, "WIRELESS CALLER"

    const-string v4, "UNAVAILABLE"

    const-string v5, "CALLER UNKNOWN"

    const-string v6, "OFFICE"

    const-string v7, "SERVICE 800"

    .line 24
    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/callapp/framework/util/NameValidationUtils;->d:[Ljava/lang/String;

    const-string v4, "PHONE CELL"

    const-string v5, "CELL PHONE"

    .line 26
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/callapp/framework/util/NameValidationUtils;->e:[Ljava/lang/String;

    .line 28
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lcom/callapp/framework/util/NameValidationUtils;->f:Ljava/util/Set;

    .line 37
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 43
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "sent you a"

    .line 45
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shared a"

    .line 46
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "joined telegram"

    .line 47
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "a new message"

    .line 48
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tienes un nuevo"

    .line 49
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "te envi\u00f3 un"

    .line 50
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u0642\u0627\u0645 \u0628\u0627\u0644\u062a\u0633\u062c\u064a\u0644 \u0641\u064a \u062a\u064a\u0644\u064a\u062c\u0631\u0627\u0645"

    .line 51
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u0642\u0627\u0645 \u0628\u0625\u0631\u0633\u0627\u0644"

    .line 52
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 4

    .line 59
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "Phone Owner"

    .line 61
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Phone Statistics"

    .line 62
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Background report for owner"

    .line 63
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Owner Details"

    .line 64
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isValid()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method
