.class Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;
.super Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OneCollector"
.end annotation


# instance fields
.field private _type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private _value:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;-><init>(Ljava/lang/Object;)V

    .line 95
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_type:Ljava/lang/Class;

    .line 96
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_value:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 7

    .line 116
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 118
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_type:Ljava/lang/Class;

    if-ne v0, v4, :cond_0

    .line 119
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_value:Ljava/lang/annotation/Annotation;

    return-object p0

    .line 122
    :cond_0
    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NCollector;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_data:Ljava/lang/Object;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_type:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_value:Ljava/lang/annotation/Annotation;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NCollector;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method

.method public asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_type:Ljava/lang/Class;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_value:Ljava/lang/annotation/Annotation;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->of(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    return-object v0
.end method

.method public asAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
    .locals 3

    .line 101
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_type:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_value:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public isPresent(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    .line 111
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_type:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
