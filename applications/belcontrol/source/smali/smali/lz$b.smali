.class public Llz$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Llz;


# direct methods
.method public constructor <init>(Llz;)V
    .locals 0

    iput-object p1, p0, Llz$b;->a:Llz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Llz$b;->a:Llz;

    invoke-virtual {v0}, Llz;->g()V

    return-void
.end method
