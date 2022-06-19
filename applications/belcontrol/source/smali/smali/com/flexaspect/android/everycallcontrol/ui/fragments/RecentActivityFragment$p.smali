.class public final enum Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

.field public static final enum c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

.field public static final enum d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

.field public static final synthetic f:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;


# instance fields
.field public a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$a;

    invoke-direct {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$a;-><init>()V

    const-string v2, "ITEM"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;-><init>(Ljava/lang/String;ILcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$d;)V

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$b;

    invoke-direct {v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$b;-><init>()V

    const-string v4, "HEADER"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;-><init>(Ljava/lang/String;ILcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$d;)V

    sput-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    new-instance v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$c;

    invoke-direct {v4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$c;-><init>()V

    const-string v6, "FOOTER"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;-><init>(Ljava/lang/String;ILcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$d;)V

    sput-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;->d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;->f:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$d;

    return-void
.end method

.method public static synthetic a(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;->b(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;
    .locals 1

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    return-object p0
.end method

.method public static values()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;->f:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    invoke-virtual {v0}, [Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$d;

    invoke-interface {v0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$p$d;->a(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    return-object p1
.end method
