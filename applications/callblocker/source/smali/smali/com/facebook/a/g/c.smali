.class Lcom/facebook/a/g/c;
.super Ljava/lang/Object;
.source "SuggestedEventViewHierarchy.java"


# static fields
.field static final a:Ljava/lang/String;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    const-class v0, Lcom/facebook/a/g/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/g/c;->a:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/widget/Switch;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/widget/Spinner;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Landroid/widget/DatePicker;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Landroid/widget/TimePicker;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Landroid/widget/RadioGroup;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Landroid/widget/RatingBar;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Landroid/widget/EditText;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Landroid/widget/AdapterView;

    aput-object v3, v1, v2

    .line 48
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/a/g/c;->b:Ljava/util/List;

    .line 47
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    sget-object v0, Lcom/facebook/a/g/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 119
    :goto_0
    return-object v0

    .line 111
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_2
    invoke-static {p0}, Lcom/facebook/a/b/a/f;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 117
    invoke-static {v0}, Lcom/facebook/a/g/c;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 119
    goto :goto_0
.end method

.method static a(Landroid/view/View;Landroid/view/View;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 59
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 61
    if-ne p0, p1, :cond_0

    .line 62
    :try_start_0
    const-string/jumbo v0, "is_interacted"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 64
    :cond_0
    invoke-static {p0, v2}, Lcom/facebook/a/g/c;->a(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 66
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 67
    invoke-static {p0}, Lcom/facebook/a/b/a/f;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v4

    .line 68
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 69
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 70
    invoke-static {v0, p1}, Lcom/facebook/a/g/c;->a(Landroid/view/View;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 71
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 68
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 73
    :cond_1
    const-string/jumbo v0, "childviews"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_1
    return-object v2

    .line 74
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static a(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 83
    :try_start_0
    invoke-static {p0}, Lcom/facebook/a/b/a/f;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {p0}, Lcom/facebook/a/b/a/f;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string/jumbo v2, "classname"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v2, "classtypebitmask"

    invoke-static {p0}, Lcom/facebook/a/b/a/f;->d(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    const-string/jumbo v2, "text"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const-string/jumbo v0, "hint"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_1
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 95
    const-string/jumbo v0, "inputtype"

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_2
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method
