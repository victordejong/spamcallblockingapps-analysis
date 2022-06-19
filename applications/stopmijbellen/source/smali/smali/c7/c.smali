.class public Lc7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lc7/c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc7/c;

    invoke-direct {v0}, Lc7/c;-><init>()V

    sput-object v0, Lc7/c;->b:Lc7/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
