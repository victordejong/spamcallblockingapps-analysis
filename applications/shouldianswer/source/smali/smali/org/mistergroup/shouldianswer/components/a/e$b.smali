.class public final Lorg/mistergroup/shouldianswer/components/a/e$b;
.super Ljava/lang/Object;
.source "ContactsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/components/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/components/a/e;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/components/a/e;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/e$b;->a:Lorg/mistergroup/shouldianswer/components/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/components/a/e$b;->c:Ljava/lang/String;

    iput p3, p0, Lorg/mistergroup/shouldianswer/components/a/e$b;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/a/e$b;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .line 59
    iput p1, p0, Lorg/mistergroup/shouldianswer/components/a/e$b;->b:I

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/e$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/a/e$b;->d:I

    return v0
.end method
