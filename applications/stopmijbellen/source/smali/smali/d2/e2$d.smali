.class public Ld2/e2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/e2;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/e2;


# direct methods
.method public constructor <init>(Ld2/e2;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/e2$d;->b:Ld2/e2;

    iput-object p2, p0, Ld2/e2$d;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ld2/e2$d;->b:Ld2/e2;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Ld2/e2;->b:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Ld2/e2;->c:Z

    .line 4
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    const-string v1, "positive"

    .line 5
    invoke-static {p1, v1, v0}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 6
    iget-object v0, p0, Ld2/e2$d;->a:Ld2/t0;

    invoke-virtual {v0, p1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    return-void
.end method
