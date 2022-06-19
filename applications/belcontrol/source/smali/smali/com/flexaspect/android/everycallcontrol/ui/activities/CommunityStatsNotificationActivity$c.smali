.class public final enum Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

.field public static final synthetic d:[Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;


# instance fields
.field public a:Z

.field public b:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    const-string v1, "TRIAL_PURCHASE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;->c:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    new-array v1, v3, [Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    aput-object v0, v1, v2

    sput-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;->d:[Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;->a:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;->b:Ljava/util/EnumSet;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;
    .locals 1

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    return-object p0
.end method

.method public static values()[Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;->d:[Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    invoke-virtual {v0}, [Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;->b:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->p(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;->b:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->p(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Actions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->p(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;->a:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->q(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;)V

    :cond_1
    return-void
.end method
