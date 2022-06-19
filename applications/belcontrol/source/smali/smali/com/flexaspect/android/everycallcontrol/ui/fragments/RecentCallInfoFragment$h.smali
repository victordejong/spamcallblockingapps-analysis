.class public final enum Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

.field public static final enum c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

.field public static final enum d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

.field public static final synthetic f:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

    const-string v1, "BLOCK_CALLS_ONLY"

    const/4 v2, 0x0

    const v3, 0x7f110460

    invoke-direct {v0, v1, v2, v3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

    const-string v3, "BLOCK_MESSAGES_ONLY"

    const/4 v4, 0x1

    const v5, 0x7f110461

    invoke-direct {v1, v3, v4, v5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

    const-string v5, "BLOCK_ALL"

    const/4 v6, 0x2

    const v7, 0x7f11045f

    invoke-direct {v3, v5, v6, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;->d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;->f:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;->a:I

    return-void
.end method

.method public static synthetic a(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;)I
    .locals 0

    iget p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;->a:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;
    .locals 1

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

    return-object p0
.end method

.method public static values()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;->f:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

    invoke-virtual {v0}, [Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$h;

    return-object v0
.end method
