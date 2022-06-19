.class public Lx/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/d;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx/d;


# direct methods
.method public constructor <init>(Lx/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx/d$a;->a:Lx/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx/d$a;->a:Lx/d;

    .line 2
    iget-object v0, v0, Lx/d;->K:Lx/d$b;

    .line 3
    invoke-virtual {v0}, Lx/d$b;->a()V

    return-void
.end method
