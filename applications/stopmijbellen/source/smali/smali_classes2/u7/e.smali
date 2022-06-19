.class public Lu7/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lu7/d;


# direct methods
.method public constructor <init>(Lu7/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu7/e;->a:Lu7/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu7/e;->a:Lu7/d;

    invoke-virtual {v0}, Lu7/d;->d()V

    return-void
.end method
