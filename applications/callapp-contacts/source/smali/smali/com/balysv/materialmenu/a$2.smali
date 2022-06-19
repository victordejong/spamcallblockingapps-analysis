.class final Lcom/balysv/materialmenu/a$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/balysv/materialmenu/a;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/balysv/materialmenu/a;


# direct methods
.method constructor <init>(Lcom/balysv/materialmenu/a;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/balysv/materialmenu/a$2;->a:Lcom/balysv/materialmenu/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 732
    iget-object p1, p0, Lcom/balysv/materialmenu/a$2;->a:Lcom/balysv/materialmenu/a;

    invoke-static {p1}, Lcom/balysv/materialmenu/a;->a(Lcom/balysv/materialmenu/a;)Z

    .line 733
    iget-object p1, p0, Lcom/balysv/materialmenu/a$2;->a:Lcom/balysv/materialmenu/a;

    invoke-static {p1}, Lcom/balysv/materialmenu/a;->b(Lcom/balysv/materialmenu/a;)Lcom/balysv/materialmenu/a$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/balysv/materialmenu/a;->a(Lcom/balysv/materialmenu/a$b;)V

    return-void
.end method
