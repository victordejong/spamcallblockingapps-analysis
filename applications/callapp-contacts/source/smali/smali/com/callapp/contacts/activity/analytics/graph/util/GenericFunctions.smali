.class public Lcom/callapp/contacts/activity/analytics/graph/util/GenericFunctions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:F = 3.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)F
    .locals 1

    .line 1032
    sget-boolean v0, Lcom/callapp/contacts/activity/analytics/graph/util/GenericFunctions;->a:Z

    if-eqz v0, :cond_0

    .line 27
    sget v0, Lcom/callapp/contacts/activity/analytics/graph/util/GenericFunctions;->b:F

    mul-float p0, p0, v0

    return p0

    .line 1033
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing call to GenericFunctions::initialize()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    .line 16
    sput-boolean v0, Lcom/callapp/contacts/activity/analytics/graph/util/GenericFunctions;->a:Z

    .line 17
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/callapp/contacts/activity/analytics/graph/util/GenericFunctions;->b:F

    return-void
.end method
