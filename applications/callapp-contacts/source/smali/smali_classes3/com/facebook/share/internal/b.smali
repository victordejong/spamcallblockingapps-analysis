.class public final Lcom/facebook/share/internal/b;
.super Lcom/facebook/internal/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/f<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Lcom/facebook/internal/c$c;->Like:Lcom/facebook/internal/c$c;

    .line 53
    invoke-virtual {v0}, Lcom/facebook/internal/c$c;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/internal/b;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    sget v0, Lcom/facebook/share/internal/b;->b:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/f;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    new-instance v0, Lcom/facebook/internal/s;

    invoke-direct {v0, p1}, Lcom/facebook/internal/s;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/b;-><init>(Lcom/facebook/internal/s;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    new-instance v0, Lcom/facebook/internal/s;

    invoke-direct {v0, p1}, Lcom/facebook/internal/s;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/b;-><init>(Lcom/facebook/internal/s;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/internal/s;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    sget v0, Lcom/facebook/share/internal/b;->b:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/f;-><init>(Lcom/facebook/internal/s;I)V

    return-void
.end method

.method public static a()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static b()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
