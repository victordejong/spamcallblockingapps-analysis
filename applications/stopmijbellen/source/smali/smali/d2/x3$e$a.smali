.class public Ld2/x3$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/x3$e;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/x3$e;


# direct methods
.method public constructor <init>(Ld2/x3$e;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/x3$e$a;->b:Ld2/x3$e;

    iput-object p2, p0, Ld2/x3$e$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/x3$e$a;->b:Ld2/x3$e;

    iget-object v0, v0, Ld2/x3$e;->a:Ld2/x3;

    iget-object v1, p0, Ld2/x3$e$a;->a:Ld2/t0;

    .line 2
    iget-object v1, v1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "transparent"

    .line 3
    invoke-static {v1, v2}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v1

    sget-boolean v2, Ld2/x3;->R:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method
