.class public Le/g/a/a/a;
.super Landroid/graphics/drawable/Drawable;
.source ""


# static fields
.field private static a:Le/g/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method public static a()Le/g/a/a/a;
    .locals 2

    sget-object v0, Le/g/a/a/a;->a:Le/g/a/a/a;

    if-nez v0, :cond_1

    const-class v0, Le/g/a/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le/g/a/a/a;->a:Le/g/a/a/a;

    if-nez v1, :cond_0

    new-instance v1, Le/g/a/a/a;

    invoke-direct {v1}, Le/g/a/a/a;-><init>()V

    sput-object v1, Le/g/a/a/a;->a:Le/g/a/a/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Le/g/a/a/a;->a:Le/g/a/a/a;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
