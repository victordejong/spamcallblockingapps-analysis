.class public Lf/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/x$a;
    }
.end annotation


# static fields
.field public static d:Lf/x;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/location/LocationManager;

.field public final c:Lf/x$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/x$a;

    invoke-direct {v0}, Lf/x$a;-><init>()V

    iput-object v0, p0, Lf/x;->c:Lf/x$a;

    .line 3
    iput-object p1, p0, Lf/x;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lf/x;->b:Landroid/location/LocationManager;

    return-void
.end method
