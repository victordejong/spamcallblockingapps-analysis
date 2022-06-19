.class public Ld2/x3$h;
.super Ld2/x3$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/x3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic b:Ld2/x3;


# direct methods
.method public constructor <init>(Ld2/x3;Ld2/y3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/x3$h;->b:Ld2/x3;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ld2/x3$g;-><init>(Ld2/x3;Ld2/y3;)V

    return-void
.end method


# virtual methods
.method public enable_event_messaging(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Ld2/x3$h;->b:Ld2/x3;

    .line 2
    iget-object v0, v0, Ld2/x3;->k:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Ld2/x3$h;->b:Ld2/x3;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Ld2/x3;->E:Z

    :cond_0
    return-void
.end method
