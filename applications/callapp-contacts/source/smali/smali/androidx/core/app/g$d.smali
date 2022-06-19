.class public final Landroidx/core/app/g$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field a:Landroid/app/PendingIntent;

.field b:Landroid/app/PendingIntent;

.field c:Landroidx/core/graphics/drawable/IconCompat;

.field d:I

.field e:I

.field f:I


# direct methods
.method private constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;III)V
    .locals 0

    .line 5430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5431
    iput-object p1, p0, Landroidx/core/app/g$d;->a:Landroid/app/PendingIntent;

    .line 5432
    iput-object p3, p0, Landroidx/core/app/g$d;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 5433
    iput p4, p0, Landroidx/core/app/g$d;->d:I

    .line 5434
    iput p5, p0, Landroidx/core/app/g$d;->e:I

    .line 5435
    iput-object p2, p0, Landroidx/core/app/g$d;->b:Landroid/app/PendingIntent;

    .line 5436
    iput p6, p0, Landroidx/core/app/g$d;->f:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILandroidx/core/app/g$1;)V
    .locals 0

    .line 5396
    invoke-direct/range {p0 .. p6}, Landroidx/core/app/g$d;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;III)V

    return-void
.end method
