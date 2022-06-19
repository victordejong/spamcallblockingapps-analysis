.class public abstract Landroidx/media/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/f$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:Landroidx/media/f$a;

.field public f:Landroid/media/VolumeProvider;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media/f;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Landroidx/media/f;->a:I

    .line 103
    iput p2, p0, Landroidx/media/f;->b:I

    .line 104
    iput p3, p0, Landroidx/media/f;->d:I

    .line 105
    iput-object p4, p0, Landroidx/media/f;->c:Ljava/lang/String;

    return-void
.end method
