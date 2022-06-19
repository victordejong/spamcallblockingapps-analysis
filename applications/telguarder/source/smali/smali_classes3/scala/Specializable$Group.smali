.class public Lscala/Specializable$Group;
.super Ljava/lang/Object;
.source "Specializable.scala"

# interfaces
.implements Lscala/Specializable$SpecializedGroup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Specializable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Group"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Specializable$SpecializedGroup;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
