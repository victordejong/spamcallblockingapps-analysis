.class public Lp7/d$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp7/d$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp7/d$d;


# direct methods
.method public constructor <init>(Lp7/d$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp7/d$d$a;->a:Lp7/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp7/d$d$a;->a:Lp7/d$d;

    invoke-virtual {v0}, Lp7/d$d;->p()V

    return-void
.end method
