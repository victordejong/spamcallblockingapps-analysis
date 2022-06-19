.class public Ld2/e2$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/e2;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/AlertDialog$Builder;

.field public final synthetic b:Ld2/e2;


# direct methods
.method public constructor <init>(Ld2/e2;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/e2$e;->b:Ld2/e2;

    iput-object p2, p0, Ld2/e2$e;->a:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/e2$e;->b:Ld2/e2;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Ld2/e2;->c:Z

    .line 3
    iget-object v1, p0, Ld2/e2$e;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 4
    iput-object v1, v0, Ld2/e2;->b:Landroid/app/AlertDialog;

    return-void
.end method
