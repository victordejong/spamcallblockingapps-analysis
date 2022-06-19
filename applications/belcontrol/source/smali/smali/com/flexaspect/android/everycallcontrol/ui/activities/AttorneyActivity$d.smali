.class public synthetic Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;->values()[Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$d;->a:[I

    :try_start_0
    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
