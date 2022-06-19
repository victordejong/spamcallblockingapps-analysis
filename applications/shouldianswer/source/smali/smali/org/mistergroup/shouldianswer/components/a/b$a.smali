.class final Lorg/mistergroup/shouldianswer/components/a/b$a;
.super Ljava/lang/Object;
.source "ContactViewContactHolder.kt"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/components/a/b;->a(Lorg/mistergroup/shouldianswer/components/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/components/a/b;

.field final synthetic b:Lorg/mistergroup/shouldianswer/components/a/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/components/a/b;Lorg/mistergroup/shouldianswer/components/a/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b$a;->a:Lorg/mistergroup/shouldianswer/components/a/b;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/components/a/b$a;->b:Lorg/mistergroup/shouldianswer/components/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b$a;->a:Lorg/mistergroup/shouldianswer/components/a/b;

    iget-object p2, p0, Lorg/mistergroup/shouldianswer/components/a/b$a;->b:Lorg/mistergroup/shouldianswer/components/a/a;

    invoke-static {p1, p2}, Lorg/mistergroup/shouldianswer/components/a/b;->a(Lorg/mistergroup/shouldianswer/components/a/b;Lorg/mistergroup/shouldianswer/components/a/a;)V

    return-void
.end method
