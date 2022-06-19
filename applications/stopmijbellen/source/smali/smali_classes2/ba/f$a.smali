.class public Lba/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lba/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lba/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lba/f$a;->a:Landroid/os/Looper;

    return-void
.end method
