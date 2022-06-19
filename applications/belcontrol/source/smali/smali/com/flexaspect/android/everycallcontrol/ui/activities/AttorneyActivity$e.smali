.class public final enum Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

.field public static final synthetic c:[Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    const-string v3, "close"

    invoke-direct {v0, v1, v2, v3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

    aput-object v0, v1, v2

    sput-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;->c:[Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;
    .locals 5

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;->values()[Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;
    .locals 1

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

    return-object p0
.end method

.method public static values()[Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;->c:[Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

    invoke-virtual {v0}, [Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

    return-object v0
.end method
