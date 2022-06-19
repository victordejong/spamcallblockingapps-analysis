.class final Lorg/mistergroup/shouldianswer/ui/search/f$a;
.super Ljava/lang/Object;
.source "SearchViewContactHolder.kt"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/f;->a(Lorg/mistergroup/shouldianswer/ui/search/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/search/f;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/search/d;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/f;Lorg/mistergroup/shouldianswer/ui/search/d;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f$a;->a:Lorg/mistergroup/shouldianswer/ui/search/f;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/f$a;->b:Lorg/mistergroup/shouldianswer/ui/search/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f$a;->a:Lorg/mistergroup/shouldianswer/ui/search/f;

    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/f$a;->b:Lorg/mistergroup/shouldianswer/ui/search/d;

    invoke-static {p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/f;->a(Lorg/mistergroup/shouldianswer/ui/search/f;Lorg/mistergroup/shouldianswer/ui/search/d;)V

    return-void
.end method
