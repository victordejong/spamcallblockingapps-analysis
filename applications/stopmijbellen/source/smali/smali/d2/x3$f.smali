.class public Ld2/x3$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/x3;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/x3;


# direct methods
.method public constructor <init>(Ld2/x3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/x3$f;->a:Ld2/x3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/x3$f;->a:Ld2/x3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 2
    iget-object v0, p0, Ld2/x3$f;->a:Ld2/x3;

    .line 3
    iput-boolean v1, v0, Ld2/x3;->C:Z

    .line 4
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
