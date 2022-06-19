.class public Ll31$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll31;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln91$b;

.field public final synthetic b:Ll31;


# direct methods
.method public constructor <init>(Ll31;Ln91$b;)V
    .locals 0

    iput-object p1, p0, Ll31$b;->b:Ll31;

    iput-object p2, p0, Ll31$b;->a:Ln91$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ll31$b;->b:Ll31;

    iget-object v1, p0, Ll31$b;->a:Ln91$b;

    iget-object v2, v1, Ln91$b;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ll31$b;->a:Ln91$b;

    iget-object v2, v2, Ln91$b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ll31;->h(Ll31;Ln91$b;Ljava/lang/String;Z)V

    return-void
.end method
