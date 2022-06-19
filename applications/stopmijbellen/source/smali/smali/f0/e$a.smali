.class public Lf0/e$a;
.super Lc4/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public i:Le0/f$c;


# direct methods
.method public constructor <init>(Le0/f$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc4/e;-><init>()V

    .line 2
    iput-object p1, p0, Lf0/e$a;->i:Le0/f$c;

    return-void
.end method
