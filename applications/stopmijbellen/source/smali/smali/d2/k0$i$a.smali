.class public Ld2/k0$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/k0$i;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;


# direct methods
.method public constructor <init>(Ld2/k0$i;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld2/k0$i$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/k0$i$a;->a:Ld2/t0;

    .line 2
    iget-object v1, v0, Ld2/t0;->b:Ld2/f4;

    .line 3
    invoke-virtual {v0, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V

    return-void
.end method
