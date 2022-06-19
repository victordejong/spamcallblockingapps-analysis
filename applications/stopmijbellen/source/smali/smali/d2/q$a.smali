.class public Ld2/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/q;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v4/media/a;

.field public final synthetic b:Ld2/q;


# direct methods
.method public constructor <init>(Ld2/q;Landroid/support/v4/media/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/q$a;->b:Ld2/q;

    iput-object p2, p0, Ld2/q$a;->a:Landroid/support/v4/media/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/q$a;->a:Landroid/support/v4/media/a;

    iget-object v1, p0, Ld2/q$a;->b:Ld2/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/a;->y(Ld2/q;)V

    return-void
.end method
