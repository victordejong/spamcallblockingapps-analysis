.class public Li51$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li51;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li51;


# direct methods
.method public constructor <init>(Li51;)V
    .locals 0

    iput-object p1, p0, Li51$a;->a:Li51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Li51$a;->a:Li51;

    invoke-static {v0}, Li51;->b(Li51;)Lq51;

    move-result-object v0

    invoke-virtual {v0}, Lq51;->c()V

    return-void
.end method
