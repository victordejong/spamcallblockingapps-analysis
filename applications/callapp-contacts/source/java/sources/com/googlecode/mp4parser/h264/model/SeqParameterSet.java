package com.googlecode.mp4parser.h264.model;

import com.googlecode.mp4parser.h264.model.VUIParameters;
import com.googlecode.mp4parser.h264.p426a.C16300b;
import com.googlecode.mp4parser.h264.p427b.C16302b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/model/SeqParameterSet.class */
public class SeqParameterSet extends BitstreamElement {
    public int bit_depth_chroma_minus8;
    public int bit_depth_luma_minus8;
    public ChromaFormat chroma_format_idc;
    public boolean constraint_set_0_flag;
    public boolean constraint_set_1_flag;
    public boolean constraint_set_2_flag;
    public boolean constraint_set_3_flag;
    public boolean constraint_set_4_flag;
    public boolean constraint_set_5_flag;
    public boolean delta_pic_order_always_zero_flag;
    public boolean direct_8x8_inference_flag;
    public boolean entropy_coding_mode_flag;
    public boolean field_pic_flag;
    public int frame_crop_bottom_offset;
    public int frame_crop_left_offset;
    public int frame_crop_right_offset;
    public int frame_crop_top_offset;
    public boolean frame_cropping_flag;
    public boolean frame_mbs_only_flag;
    public boolean gaps_in_frame_num_value_allowed_flag;
    public int level_idc;
    public int log2_max_frame_num_minus4;
    public int log2_max_pic_order_cnt_lsb_minus4;
    public boolean mb_adaptive_frame_field_flag;
    public int num_ref_frames;
    public int num_ref_frames_in_pic_order_cnt_cycle;
    public int[] offsetForRefFrame;
    public int offset_for_non_ref_pic;
    public int offset_for_top_to_bottom_field;
    public int pic_height_in_map_units_minus1;
    public int pic_order_cnt_type;
    public int pic_width_in_mbs_minus1;
    public int profile_idc;
    public boolean qpprime_y_zero_transform_bypass_flag;
    public long reserved_zero_2bits;
    public boolean residual_color_transform_flag;
    public ScalingMatrix scalingMatrix;
    public int seq_parameter_set_id;
    public VUIParameters vuiParams;
    public int weighted_bipred_idc;
    public boolean weighted_pred_flag;

    private static VUIParameters ReadVUIParameters(C16300b c16300b) throws IOException {
        VUIParameters vUIParameters = new VUIParameters();
        vUIParameters.aspect_ratio_info_present_flag = c16300b.m7473c("VUI: aspect_ratio_info_present_flag");
        if (vUIParameters.aspect_ratio_info_present_flag) {
            vUIParameters.aspect_ratio = AspectRatio.fromValue((int) c16300b.m7477a(8, "VUI: aspect_ratio"));
            if (vUIParameters.aspect_ratio == AspectRatio.Extended_SAR) {
                vUIParameters.sar_width = (int) c16300b.m7477a(16, "VUI: sar_width");
                vUIParameters.sar_height = (int) c16300b.m7477a(16, "VUI: sar_height");
            }
        }
        vUIParameters.overscan_info_present_flag = c16300b.m7473c("VUI: overscan_info_present_flag");
        if (vUIParameters.overscan_info_present_flag) {
            vUIParameters.overscan_appropriate_flag = c16300b.m7473c("VUI: overscan_appropriate_flag");
        }
        vUIParameters.video_signal_type_present_flag = c16300b.m7473c("VUI: video_signal_type_present_flag");
        if (vUIParameters.video_signal_type_present_flag) {
            vUIParameters.video_format = (int) c16300b.m7477a(3, "VUI: video_format");
            vUIParameters.video_full_range_flag = c16300b.m7473c("VUI: video_full_range_flag");
            vUIParameters.colour_description_present_flag = c16300b.m7473c("VUI: colour_description_present_flag");
            if (vUIParameters.colour_description_present_flag) {
                vUIParameters.colour_primaries = (int) c16300b.m7477a(8, "VUI: colour_primaries");
                vUIParameters.transfer_characteristics = (int) c16300b.m7477a(8, "VUI: transfer_characteristics");
                vUIParameters.matrix_coefficients = (int) c16300b.m7477a(8, "VUI: matrix_coefficients");
            }
        }
        vUIParameters.chroma_loc_info_present_flag = c16300b.m7473c("VUI: chroma_loc_info_present_flag");
        if (vUIParameters.chroma_loc_info_present_flag) {
            vUIParameters.chroma_sample_loc_type_top_field = c16300b.m7476a("VUI chroma_sample_loc_type_top_field");
            vUIParameters.chroma_sample_loc_type_bottom_field = c16300b.m7476a("VUI chroma_sample_loc_type_bottom_field");
        }
        vUIParameters.timing_info_present_flag = c16300b.m7473c("VUI: timing_info_present_flag");
        if (vUIParameters.timing_info_present_flag) {
            vUIParameters.num_units_in_tick = (int) c16300b.m7477a(32, "VUI: num_units_in_tick");
            vUIParameters.time_scale = (int) c16300b.m7477a(32, "VUI: time_scale");
            vUIParameters.fixed_frame_rate_flag = c16300b.m7473c("VUI: fixed_frame_rate_flag");
        }
        boolean m7473c = c16300b.m7473c("VUI: nal_hrd_parameters_present_flag");
        if (m7473c) {
            vUIParameters.nalHRDParams = readHRDParameters(c16300b);
        }
        boolean m7473c2 = c16300b.m7473c("VUI: vcl_hrd_parameters_present_flag");
        if (m7473c2) {
            vUIParameters.vclHRDParams = readHRDParameters(c16300b);
        }
        if (m7473c || m7473c2) {
            vUIParameters.low_delay_hrd_flag = c16300b.m7473c("VUI: low_delay_hrd_flag");
        }
        vUIParameters.pic_struct_present_flag = c16300b.m7473c("VUI: pic_struct_present_flag");
        if (c16300b.m7473c("VUI: bitstream_restriction_flag")) {
            vUIParameters.bitstreamRestriction = new VUIParameters.BitstreamRestriction();
            vUIParameters.bitstreamRestriction.motion_vectors_over_pic_boundaries_flag = c16300b.m7473c("VUI: motion_vectors_over_pic_boundaries_flag");
            vUIParameters.bitstreamRestriction.max_bytes_per_pic_denom = c16300b.m7476a("VUI max_bytes_per_pic_denom");
            vUIParameters.bitstreamRestriction.max_bits_per_mb_denom = c16300b.m7476a("VUI max_bits_per_mb_denom");
            vUIParameters.bitstreamRestriction.log2_max_mv_length_horizontal = c16300b.m7476a("VUI log2_max_mv_length_horizontal");
            vUIParameters.bitstreamRestriction.log2_max_mv_length_vertical = c16300b.m7476a("VUI log2_max_mv_length_vertical");
            vUIParameters.bitstreamRestriction.num_reorder_frames = c16300b.m7476a("VUI num_reorder_frames");
            vUIParameters.bitstreamRestriction.max_dec_frame_buffering = c16300b.m7476a("VUI max_dec_frame_buffering");
        }
        return vUIParameters;
    }

    public static SeqParameterSet read(InputStream inputStream) throws IOException {
        C16300b c16300b = new C16300b(inputStream);
        SeqParameterSet seqParameterSet = new SeqParameterSet();
        seqParameterSet.profile_idc = (int) c16300b.m7477a(8, "SPS: profile_idc");
        seqParameterSet.constraint_set_0_flag = c16300b.m7473c("SPS: constraint_set_0_flag");
        seqParameterSet.constraint_set_1_flag = c16300b.m7473c("SPS: constraint_set_1_flag");
        seqParameterSet.constraint_set_2_flag = c16300b.m7473c("SPS: constraint_set_2_flag");
        seqParameterSet.constraint_set_3_flag = c16300b.m7473c("SPS: constraint_set_3_flag");
        seqParameterSet.constraint_set_4_flag = c16300b.m7473c("SPS: constraint_set_4_flag");
        seqParameterSet.constraint_set_5_flag = c16300b.m7473c("SPS: constraint_set_5_flag");
        seqParameterSet.reserved_zero_2bits = c16300b.m7477a(2, "SPS: reserved_zero_2bits");
        seqParameterSet.level_idc = (int) c16300b.m7477a(8, "SPS: level_idc");
        seqParameterSet.seq_parameter_set_id = c16300b.m7476a("SPS: seq_parameter_set_id");
        int i = seqParameterSet.profile_idc;
        if (i == 100 || i == 110 || i == 122 || i == 144) {
            ChromaFormat fromId = ChromaFormat.fromId(c16300b.m7476a("SPS: chroma_format_idc"));
            seqParameterSet.chroma_format_idc = fromId;
            if (fromId == ChromaFormat.YUV_444) {
                seqParameterSet.residual_color_transform_flag = c16300b.m7473c("SPS: residual_color_transform_flag");
            }
            seqParameterSet.bit_depth_luma_minus8 = c16300b.m7476a("SPS: bit_depth_luma_minus8");
            seqParameterSet.bit_depth_chroma_minus8 = c16300b.m7476a("SPS: bit_depth_chroma_minus8");
            seqParameterSet.qpprime_y_zero_transform_bypass_flag = c16300b.m7473c("SPS: qpprime_y_zero_transform_bypass_flag");
            if (c16300b.m7473c("SPS: seq_scaling_matrix_present_lag")) {
                readScalingListMatrix(c16300b, seqParameterSet);
            }
        } else {
            seqParameterSet.chroma_format_idc = ChromaFormat.YUV_420;
        }
        seqParameterSet.log2_max_frame_num_minus4 = c16300b.m7476a("SPS: log2_max_frame_num_minus4");
        int m7476a = c16300b.m7476a("SPS: pic_order_cnt_type");
        seqParameterSet.pic_order_cnt_type = m7476a;
        if (m7476a == 0) {
            seqParameterSet.log2_max_pic_order_cnt_lsb_minus4 = c16300b.m7476a("SPS: log2_max_pic_order_cnt_lsb_minus4");
        } else if (m7476a == 1) {
            seqParameterSet.delta_pic_order_always_zero_flag = c16300b.m7473c("SPS: delta_pic_order_always_zero_flag");
            seqParameterSet.offset_for_non_ref_pic = c16300b.m7474b("SPS: offset_for_non_ref_pic");
            seqParameterSet.offset_for_top_to_bottom_field = c16300b.m7474b("SPS: offset_for_top_to_bottom_field");
            int m7476a2 = c16300b.m7476a("SPS: num_ref_frames_in_pic_order_cnt_cycle");
            seqParameterSet.num_ref_frames_in_pic_order_cnt_cycle = m7476a2;
            seqParameterSet.offsetForRefFrame = new int[m7476a2];
            for (int i2 = 0; i2 < seqParameterSet.num_ref_frames_in_pic_order_cnt_cycle; i2++) {
                seqParameterSet.offsetForRefFrame[i2] = c16300b.m7474b("SPS: offsetForRefFrame [" + i2 + "]");
            }
        }
        seqParameterSet.num_ref_frames = c16300b.m7476a("SPS: num_ref_frames");
        seqParameterSet.gaps_in_frame_num_value_allowed_flag = c16300b.m7473c("SPS: gaps_in_frame_num_value_allowed_flag");
        seqParameterSet.pic_width_in_mbs_minus1 = c16300b.m7476a("SPS: pic_width_in_mbs_minus1");
        seqParameterSet.pic_height_in_map_units_minus1 = c16300b.m7476a("SPS: pic_height_in_map_units_minus1");
        boolean m7473c = c16300b.m7473c("SPS: frame_mbs_only_flag");
        seqParameterSet.frame_mbs_only_flag = m7473c;
        if (!m7473c) {
            seqParameterSet.mb_adaptive_frame_field_flag = c16300b.m7473c("SPS: mb_adaptive_frame_field_flag");
        }
        seqParameterSet.direct_8x8_inference_flag = c16300b.m7473c("SPS: direct_8x8_inference_flag");
        boolean m7473c2 = c16300b.m7473c("SPS: frame_cropping_flag");
        seqParameterSet.frame_cropping_flag = m7473c2;
        if (m7473c2) {
            seqParameterSet.frame_crop_left_offset = c16300b.m7476a("SPS: frame_crop_left_offset");
            seqParameterSet.frame_crop_right_offset = c16300b.m7476a("SPS: frame_crop_right_offset");
            seqParameterSet.frame_crop_top_offset = c16300b.m7476a("SPS: frame_crop_top_offset");
            seqParameterSet.frame_crop_bottom_offset = c16300b.m7476a("SPS: frame_crop_bottom_offset");
        }
        if (c16300b.m7473c("SPS: vui_parameters_present_flag")) {
            seqParameterSet.vuiParams = ReadVUIParameters(c16300b);
        }
        c16300b.m7472d();
        return seqParameterSet;
    }

    public static SeqParameterSet read(byte[] bArr) throws IOException {
        return read(new ByteArrayInputStream(bArr));
    }

    private static HRDParameters readHRDParameters(C16300b c16300b) throws IOException {
        HRDParameters hRDParameters = new HRDParameters();
        hRDParameters.cpb_cnt_minus1 = c16300b.m7476a("SPS: cpb_cnt_minus1");
        hRDParameters.bit_rate_scale = (int) c16300b.m7477a(4, "HRD: bit_rate_scale");
        hRDParameters.cpb_size_scale = (int) c16300b.m7477a(4, "HRD: cpb_size_scale");
        hRDParameters.bit_rate_value_minus1 = new int[hRDParameters.cpb_cnt_minus1 + 1];
        hRDParameters.cpb_size_value_minus1 = new int[hRDParameters.cpb_cnt_minus1 + 1];
        hRDParameters.cbr_flag = new boolean[hRDParameters.cpb_cnt_minus1 + 1];
        for (int i = 0; i <= hRDParameters.cpb_cnt_minus1; i++) {
            hRDParameters.bit_rate_value_minus1[i] = c16300b.m7476a("HRD: bit_rate_value_minus1");
            hRDParameters.cpb_size_value_minus1[i] = c16300b.m7476a("HRD: cpb_size_value_minus1");
            hRDParameters.cbr_flag[i] = c16300b.m7473c("HRD: cbr_flag");
        }
        hRDParameters.initial_cpb_removal_delay_length_minus1 = (int) c16300b.m7477a(5, "HRD: initial_cpb_removal_delay_length_minus1");
        hRDParameters.cpb_removal_delay_length_minus1 = (int) c16300b.m7477a(5, "HRD: cpb_removal_delay_length_minus1");
        hRDParameters.dpb_output_delay_length_minus1 = (int) c16300b.m7477a(5, "HRD: dpb_output_delay_length_minus1");
        hRDParameters.time_offset_length = (int) c16300b.m7477a(5, "HRD: time_offset_length");
        return hRDParameters;
    }

    private static void readScalingListMatrix(C16300b c16300b, SeqParameterSet seqParameterSet) throws IOException {
        seqParameterSet.scalingMatrix = new ScalingMatrix();
        for (int i = 0; i < 8; i++) {
            if (c16300b.m7473c("SPS: seqScalingListPresentFlag")) {
                seqParameterSet.scalingMatrix.ScalingList4x4 = new ScalingList[8];
                seqParameterSet.scalingMatrix.ScalingList8x8 = new ScalingList[8];
                if (i < 6) {
                    seqParameterSet.scalingMatrix.ScalingList4x4[i] = ScalingList.read(c16300b, 16);
                } else {
                    seqParameterSet.scalingMatrix.ScalingList8x8[i - 6] = ScalingList.read(c16300b, 64);
                }
            }
        }
    }

    private void writeHRDParameters(HRDParameters hRDParameters, C16302b c16302b) throws IOException {
        c16302b.m7465a(hRDParameters.cpb_cnt_minus1, "HRD: cpb_cnt_minus1");
        c16302b.m7464a(hRDParameters.bit_rate_scale, 4, "HRD: bit_rate_scale");
        c16302b.m7464a(hRDParameters.cpb_size_scale, 4, "HRD: cpb_size_scale");
        for (int i = 0; i <= hRDParameters.cpb_cnt_minus1; i++) {
            c16302b.m7465a(hRDParameters.bit_rate_value_minus1[i], "HRD: ");
            c16302b.m7465a(hRDParameters.cpb_size_value_minus1[i], "HRD: ");
            c16302b.m7463a(hRDParameters.cbr_flag[i], "HRD: ");
        }
        c16302b.m7464a(hRDParameters.initial_cpb_removal_delay_length_minus1, 5, "HRD: initial_cpb_removal_delay_length_minus1");
        c16302b.m7464a(hRDParameters.cpb_removal_delay_length_minus1, 5, "HRD: cpb_removal_delay_length_minus1");
        c16302b.m7464a(hRDParameters.dpb_output_delay_length_minus1, 5, "HRD: dpb_output_delay_length_minus1");
        c16302b.m7464a(hRDParameters.time_offset_length, 5, "HRD: time_offset_length");
    }

    private void writeVUIParameters(VUIParameters vUIParameters, C16302b c16302b) throws IOException {
        c16302b.m7463a(vUIParameters.aspect_ratio_info_present_flag, "VUI: aspect_ratio_info_present_flag");
        if (vUIParameters.aspect_ratio_info_present_flag) {
            c16302b.m7464a(vUIParameters.aspect_ratio.getValue(), 8, "VUI: aspect_ratio");
            if (vUIParameters.aspect_ratio == AspectRatio.Extended_SAR) {
                c16302b.m7464a(vUIParameters.sar_width, 16, "VUI: sar_width");
                c16302b.m7464a(vUIParameters.sar_height, 16, "VUI: sar_height");
            }
        }
        c16302b.m7463a(vUIParameters.overscan_info_present_flag, "VUI: overscan_info_present_flag");
        if (vUIParameters.overscan_info_present_flag) {
            c16302b.m7463a(vUIParameters.overscan_appropriate_flag, "VUI: overscan_appropriate_flag");
        }
        c16302b.m7463a(vUIParameters.video_signal_type_present_flag, "VUI: video_signal_type_present_flag");
        if (vUIParameters.video_signal_type_present_flag) {
            c16302b.m7464a(vUIParameters.video_format, 3, "VUI: video_format");
            c16302b.m7463a(vUIParameters.video_full_range_flag, "VUI: video_full_range_flag");
            c16302b.m7463a(vUIParameters.colour_description_present_flag, "VUI: colour_description_present_flag");
            if (vUIParameters.colour_description_present_flag) {
                c16302b.m7464a(vUIParameters.colour_primaries, 8, "VUI: colour_primaries");
                c16302b.m7464a(vUIParameters.transfer_characteristics, 8, "VUI: transfer_characteristics");
                c16302b.m7464a(vUIParameters.matrix_coefficients, 8, "VUI: matrix_coefficients");
            }
        }
        c16302b.m7463a(vUIParameters.chroma_loc_info_present_flag, "VUI: chroma_loc_info_present_flag");
        if (vUIParameters.chroma_loc_info_present_flag) {
            c16302b.m7465a(vUIParameters.chroma_sample_loc_type_top_field, "VUI: chroma_sample_loc_type_top_field");
            c16302b.m7465a(vUIParameters.chroma_sample_loc_type_bottom_field, "VUI: chroma_sample_loc_type_bottom_field");
        }
        c16302b.m7463a(vUIParameters.timing_info_present_flag, "VUI: timing_info_present_flag");
        if (vUIParameters.timing_info_present_flag) {
            c16302b.m7464a(vUIParameters.num_units_in_tick, 32, "VUI: num_units_in_tick");
            c16302b.m7464a(vUIParameters.time_scale, 32, "VUI: time_scale");
            c16302b.m7463a(vUIParameters.fixed_frame_rate_flag, "VUI: fixed_frame_rate_flag");
        }
        c16302b.m7463a(vUIParameters.nalHRDParams != null, "VUI: ");
        if (vUIParameters.nalHRDParams != null) {
            writeHRDParameters(vUIParameters.nalHRDParams, c16302b);
        }
        c16302b.m7463a(vUIParameters.vclHRDParams != null, "VUI: ");
        if (vUIParameters.vclHRDParams != null) {
            writeHRDParameters(vUIParameters.vclHRDParams, c16302b);
        }
        if (vUIParameters.nalHRDParams != null || vUIParameters.vclHRDParams != null) {
            c16302b.m7463a(vUIParameters.low_delay_hrd_flag, "VUI: low_delay_hrd_flag");
        }
        c16302b.m7463a(vUIParameters.pic_struct_present_flag, "VUI: pic_struct_present_flag");
        c16302b.m7463a(vUIParameters.bitstreamRestriction != null, "VUI: ");
        if (vUIParameters.bitstreamRestriction != null) {
            c16302b.m7463a(vUIParameters.bitstreamRestriction.motion_vectors_over_pic_boundaries_flag, "VUI: motion_vectors_over_pic_boundaries_flag");
            c16302b.m7465a(vUIParameters.bitstreamRestriction.max_bytes_per_pic_denom, "VUI: max_bytes_per_pic_denom");
            c16302b.m7465a(vUIParameters.bitstreamRestriction.max_bits_per_mb_denom, "VUI: max_bits_per_mb_denom");
            c16302b.m7465a(vUIParameters.bitstreamRestriction.log2_max_mv_length_horizontal, "VUI: log2_max_mv_length_horizontal");
            c16302b.m7465a(vUIParameters.bitstreamRestriction.log2_max_mv_length_vertical, "VUI: log2_max_mv_length_vertical");
            c16302b.m7465a(vUIParameters.bitstreamRestriction.num_reorder_frames, "VUI: num_reorder_frames");
            c16302b.m7465a(vUIParameters.bitstreamRestriction.max_dec_frame_buffering, "VUI: max_dec_frame_buffering");
        }
    }

    public String toString() {
        return "SeqParameterSet{ \n        pic_order_cnt_type=" + this.pic_order_cnt_type + ", \n        field_pic_flag=" + this.field_pic_flag + ", \n        delta_pic_order_always_zero_flag=" + this.delta_pic_order_always_zero_flag + ", \n        weighted_pred_flag=" + this.weighted_pred_flag + ", \n        weighted_bipred_idc=" + this.weighted_bipred_idc + ", \n        entropy_coding_mode_flag=" + this.entropy_coding_mode_flag + ", \n        mb_adaptive_frame_field_flag=" + this.mb_adaptive_frame_field_flag + ", \n        direct_8x8_inference_flag=" + this.direct_8x8_inference_flag + ", \n        chroma_format_idc=" + this.chroma_format_idc + ", \n        log2_max_frame_num_minus4=" + this.log2_max_frame_num_minus4 + ", \n        log2_max_pic_order_cnt_lsb_minus4=" + this.log2_max_pic_order_cnt_lsb_minus4 + ", \n        pic_height_in_map_units_minus1=" + this.pic_height_in_map_units_minus1 + ", \n        pic_width_in_mbs_minus1=" + this.pic_width_in_mbs_minus1 + ", \n        bit_depth_luma_minus8=" + this.bit_depth_luma_minus8 + ", \n        bit_depth_chroma_minus8=" + this.bit_depth_chroma_minus8 + ", \n        qpprime_y_zero_transform_bypass_flag=" + this.qpprime_y_zero_transform_bypass_flag + ", \n        profile_idc=" + this.profile_idc + ", \n        constraint_set_0_flag=" + this.constraint_set_0_flag + ", \n        constraint_set_1_flag=" + this.constraint_set_1_flag + ", \n        constraint_set_2_flag=" + this.constraint_set_2_flag + ", \n        constraint_set_3_flag=" + this.constraint_set_3_flag + ", \n        constraint_set_4_flag=" + this.constraint_set_4_flag + ", \n        constraint_set_5_flag=" + this.constraint_set_5_flag + ", \n        level_idc=" + this.level_idc + ", \n        seq_parameter_set_id=" + this.seq_parameter_set_id + ", \n        residual_color_transform_flag=" + this.residual_color_transform_flag + ", \n        offset_for_non_ref_pic=" + this.offset_for_non_ref_pic + ", \n        offset_for_top_to_bottom_field=" + this.offset_for_top_to_bottom_field + ", \n        num_ref_frames=" + this.num_ref_frames + ", \n        gaps_in_frame_num_value_allowed_flag=" + this.gaps_in_frame_num_value_allowed_flag + ", \n        frame_mbs_only_flag=" + this.frame_mbs_only_flag + ", \n        frame_cropping_flag=" + this.frame_cropping_flag + ", \n        frame_crop_left_offset=" + this.frame_crop_left_offset + ", \n        frame_crop_right_offset=" + this.frame_crop_right_offset + ", \n        frame_crop_top_offset=" + this.frame_crop_top_offset + ", \n        frame_crop_bottom_offset=" + this.frame_crop_bottom_offset + ", \n        offsetForRefFrame=" + this.offsetForRefFrame + ", \n        vuiParams=" + this.vuiParams + ", \n        scalingMatrix=" + this.scalingMatrix + ", \n        num_ref_frames_in_pic_order_cnt_cycle=" + this.num_ref_frames_in_pic_order_cnt_cycle + '}';
    }

    @Override // com.googlecode.mp4parser.h264.model.BitstreamElement
    public void write(OutputStream outputStream) throws IOException {
        C16302b c16302b = new C16302b(outputStream);
        c16302b.m7464a(this.profile_idc, 8, "SPS: profile_idc");
        c16302b.m7463a(this.constraint_set_0_flag, "SPS: constraint_set_0_flag");
        c16302b.m7463a(this.constraint_set_1_flag, "SPS: constraint_set_1_flag");
        c16302b.m7463a(this.constraint_set_2_flag, "SPS: constraint_set_2_flag");
        c16302b.m7463a(this.constraint_set_3_flag, "SPS: constraint_set_3_flag");
        c16302b.m7464a(0L, 4, "SPS: reserved");
        c16302b.m7464a(this.level_idc, 8, "SPS: level_idc");
        c16302b.m7465a(this.seq_parameter_set_id, "SPS: seq_parameter_set_id");
        int i = this.profile_idc;
        if (i == 100 || i == 110 || i == 122 || i == 144) {
            c16302b.m7465a(this.chroma_format_idc.getId(), "SPS: chroma_format_idc");
            if (this.chroma_format_idc == ChromaFormat.YUV_444) {
                c16302b.m7463a(this.residual_color_transform_flag, "SPS: residual_color_transform_flag");
            }
            c16302b.m7465a(this.bit_depth_luma_minus8, "SPS: ");
            c16302b.m7465a(this.bit_depth_chroma_minus8, "SPS: ");
            c16302b.m7463a(this.qpprime_y_zero_transform_bypass_flag, "SPS: qpprime_y_zero_transform_bypass_flag");
            c16302b.m7463a(this.scalingMatrix != null, "SPS: ");
            if (this.scalingMatrix != null) {
                for (int i2 = 0; i2 < 8; i2++) {
                    if (i2 < 6) {
                        c16302b.m7463a(this.scalingMatrix.ScalingList4x4[i2] != null, "SPS: ");
                        if (this.scalingMatrix.ScalingList4x4[i2] != null) {
                            this.scalingMatrix.ScalingList4x4[i2].write(c16302b);
                        }
                    } else {
                        int i3 = i2 - 6;
                        c16302b.m7463a(this.scalingMatrix.ScalingList8x8[i3] != null, "SPS: ");
                        if (this.scalingMatrix.ScalingList8x8[i3] != null) {
                            this.scalingMatrix.ScalingList8x8[i3].write(c16302b);
                        }
                    }
                }
            }
        }
        c16302b.m7465a(this.log2_max_frame_num_minus4, "SPS: log2_max_frame_num_minus4");
        c16302b.m7465a(this.pic_order_cnt_type, "SPS: pic_order_cnt_type");
        int i4 = this.pic_order_cnt_type;
        if (i4 == 0) {
            c16302b.m7465a(this.log2_max_pic_order_cnt_lsb_minus4, "SPS: log2_max_pic_order_cnt_lsb_minus4");
        } else if (i4 == 1) {
            c16302b.m7463a(this.delta_pic_order_always_zero_flag, "SPS: delta_pic_order_always_zero_flag");
            c16302b.m7461b(this.offset_for_non_ref_pic, "SPS: offset_for_non_ref_pic");
            c16302b.m7461b(this.offset_for_top_to_bottom_field, "SPS: offset_for_top_to_bottom_field");
            c16302b.m7465a(this.offsetForRefFrame.length, "SPS: ");
            int i5 = 0;
            while (true) {
                int[] iArr = this.offsetForRefFrame;
                if (i5 >= iArr.length) {
                    break;
                }
                c16302b.m7461b(iArr[i5], "SPS: ");
                i5++;
            }
        }
        c16302b.m7465a(this.num_ref_frames, "SPS: num_ref_frames");
        c16302b.m7463a(this.gaps_in_frame_num_value_allowed_flag, "SPS: gaps_in_frame_num_value_allowed_flag");
        c16302b.m7465a(this.pic_width_in_mbs_minus1, "SPS: pic_width_in_mbs_minus1");
        c16302b.m7465a(this.pic_height_in_map_units_minus1, "SPS: pic_height_in_map_units_minus1");
        c16302b.m7463a(this.frame_mbs_only_flag, "SPS: frame_mbs_only_flag");
        if (!this.frame_mbs_only_flag) {
            c16302b.m7463a(this.mb_adaptive_frame_field_flag, "SPS: mb_adaptive_frame_field_flag");
        }
        c16302b.m7463a(this.direct_8x8_inference_flag, "SPS: direct_8x8_inference_flag");
        c16302b.m7463a(this.frame_cropping_flag, "SPS: frame_cropping_flag");
        if (this.frame_cropping_flag) {
            c16302b.m7465a(this.frame_crop_left_offset, "SPS: frame_crop_left_offset");
            c16302b.m7465a(this.frame_crop_right_offset, "SPS: frame_crop_right_offset");
            c16302b.m7465a(this.frame_crop_top_offset, "SPS: frame_crop_top_offset");
            c16302b.m7465a(this.frame_crop_bottom_offset, "SPS: frame_crop_bottom_offset");
        }
        boolean z = false;
        if (this.vuiParams != null) {
            z = true;
        }
        c16302b.m7463a(z, "SPS: ");
        VUIParameters vUIParameters = this.vuiParams;
        if (vUIParameters != null) {
            writeVUIParameters(vUIParameters, c16302b);
        }
        c16302b.m7460c();
    }
}
