.class public Ld2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ld2/c;


# direct methods
.method public constructor <init>(Ld2/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/c$a;->b:Ld2/c;

    iput-object p2, p0, Ld2/c$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ld2/c$a;->b:Ld2/c;

    iget-object v0, v0, Ld2/c;->c:Landroid/support/v4/media/a;

    iget-object v1, p0, Ld2/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/a;->H(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ld2/c$a;->b:Ld2/c;

    iget-object v0, v0, Ld2/c;->c:Landroid/support/v4/media/a;

    invoke-virtual {v0}, Landroid/support/v4/media/a;->z()V

    :goto_0
    return-void
.end method
