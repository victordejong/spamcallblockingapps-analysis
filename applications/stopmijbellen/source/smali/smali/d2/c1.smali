.class public Ld2/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/d1;


# direct methods
.method public constructor <init>(Ld2/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/c1;->a:Ld2/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/c1;->a:Ld2/d1;

    .line 2
    invoke-virtual {v0}, Ld2/d1;->a()V

    return-void
.end method
