.class public Ld2/g2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/g2;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/x3;

.field public final synthetic b:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/g2;Ld2/x3;Ld2/f1;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld2/g2$a;->a:Ld2/x3;

    iput-object p3, p0, Ld2/g2$a;->b:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/g2$a;->a:Ld2/x3;

    invoke-virtual {v0}, Ld2/x3;->g()V

    .line 2
    iget-object v0, p0, Ld2/g2$a;->b:Ld2/f1;

    invoke-virtual {v0}, Ld2/f1;->p()Ld2/h0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/h0;->f()V

    return-void
.end method
