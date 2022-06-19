.class public Ld00$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld00;


# direct methods
.method public constructor <init>(Ld00;)V
    .locals 0

    iput-object p1, p0, Ld00$a;->a:Ld00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld00$a;->a:Ld00;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Ld00;->k(I)V

    return-void
.end method
