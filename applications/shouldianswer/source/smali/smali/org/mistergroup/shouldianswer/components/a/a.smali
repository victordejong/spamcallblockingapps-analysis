.class public final Lorg/mistergroup/shouldianswer/components/a/a;
.super Ljava/lang/Object;
.source "ContactItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/components/a/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/text/Spanned;

.field private b:Landroid/text/Spanned;

.field private c:Ljava/lang/String;

.field private d:I

.field private final e:Lorg/mistergroup/shouldianswer/components/a/a$a;

.field private final f:Lorg/mistergroup/shouldianswer/model/ac;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/components/a/a$a;Lorg/mistergroup/shouldianswer/model/ac;)V
    .locals 1

    const-string v0, "itemType"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/a;->e:Lorg/mistergroup/shouldianswer/components/a/a$a;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/components/a/a;->f:Lorg/mistergroup/shouldianswer/model/ac;

    return-void
.end method


# virtual methods
.method public final a()Landroid/text/Spanned;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/a;->a:Landroid/text/Spanned;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 22
    iput p1, p0, Lorg/mistergroup/shouldianswer/components/a/a;->d:I

    return-void
.end method

.method public final a(Landroid/text/Spanned;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/a;->a:Landroid/text/Spanned;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()Landroid/text/Spanned;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/a;->b:Landroid/text/Spanned;

    return-object v0
.end method

.method public final b(Landroid/text/Spanned;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/a;->b:Landroid/text/Spanned;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 22
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/a/a;->d:I

    return v0
.end method

.method public final e()Lorg/mistergroup/shouldianswer/components/a/a$a;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/a;->e:Lorg/mistergroup/shouldianswer/components/a/a$a;

    return-object v0
.end method

.method public final f()Lorg/mistergroup/shouldianswer/model/ac;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/a;->f:Lorg/mistergroup/shouldianswer/model/ac;

    return-object v0
.end method
