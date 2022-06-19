.class public abstract Lp9/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp9/o$b;
    }
.end annotation


# static fields
.field public static final a:Lp9/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lp9/o$a;

    invoke-direct {v0}, Lp9/o$a;-><init>()V

    sput-object v0, Lp9/o;->a:Lp9/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
