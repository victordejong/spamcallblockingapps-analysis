.class public abstract synthetic Lxr;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lyr;)V
    .locals 0

    return-void
.end method

.method public static b(Lyr;JJJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static c(Lyr;JJJLjava/util/List;[Lhq;)V
    .locals 0

    invoke-interface/range {p0 .. p6}, Lyr;->updateSelectedTrack(JJJ)V

    return-void
.end method
