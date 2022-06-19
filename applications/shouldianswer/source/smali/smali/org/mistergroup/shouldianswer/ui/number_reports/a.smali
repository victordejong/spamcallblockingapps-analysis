.class public final Lorg/mistergroup/shouldianswer/ui/number_reports/a;
.super Ljava/lang/Object;
.source "Item.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;
    }
.end annotation


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

.field private b:Ljava/lang/String;

.field private final c:Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;)V
    .locals 1

    const-string v0, "itemType"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->c:Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;

    return-void
.end method


# virtual methods
.method public final a()Lorg/mistergroup/shouldianswer/model/communityDatabase/d;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    return-object v0
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/communityDatabase/d;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->c:Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;

    return-object v0
.end method
