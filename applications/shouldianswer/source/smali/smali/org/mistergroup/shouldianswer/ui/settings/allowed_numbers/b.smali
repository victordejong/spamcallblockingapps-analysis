.class public final Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;
.super Ljava/lang/Object;
.source "ExceptionsItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b$a;
    }
.end annotation


# instance fields
.field private final a:Lorg/mistergroup/shouldianswer/model/d;

.field private final b:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b$a;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/model/d;Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b$a;)V
    .locals 1

    const-string v0, "blockException"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemType"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;->a:Lorg/mistergroup/shouldianswer/model/d;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;->b:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b$a;

    return-void
.end method


# virtual methods
.method public final a()Lorg/mistergroup/shouldianswer/model/d;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;->a:Lorg/mistergroup/shouldianswer/model/d;

    return-object v0
.end method

.method public final b()Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b$a;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;->b:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b$a;

    return-object v0
.end method
